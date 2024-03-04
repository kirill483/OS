#pragma once

#include <iostream>
#include <vector>
#include <map>
#include <set>
#include <fstream>

#include "../lib/json.hpp"

namespace cp {

class TDagJobExecutor;

struct TJob {
    std::string name, path;
};

class TJobDag {
private:
    using TMapStringToStrings = std::map<std::string, std::vector<std::string>>;

    std::map<std::string, TJob> jobs;

    TMapStringToStrings dep;


    TMapStringToStrings rdep;

    static bool Dfs(const std::string &v,
                    std::map<std::string, int>& visited,
                    TMapStringToStrings& dep);

    static bool CheckCorrectness(TJobDag &dag);

    static TMapStringToStrings Inverse(TMapStringToStrings &map);

public:

    friend class TDagJobExecutor;

    TJobDag() = default;
    TJobDag(const std::vector<TJob>& jobs, const std::vector<std::pair<std::string, std::string>>& deps);

};


class JSONParser {
public:

    static TJobDag Parse(const std::string &pathToFile);

};

} 
