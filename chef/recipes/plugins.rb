# Get plugin list by going to JENKINS/script and running: 
# Jenkins.instance.pluginManager.plugins.each {
#     plugin ->
#         println("\"${plugin.getShortName()}\": \"${plugin.getVersion()}\",")
# }

plugins = {
    
}

plugins.each do | name, plugin_version |
    jenkins_plugin name do
        version plugin_version
        action :install
        install_deps true
    end
end
