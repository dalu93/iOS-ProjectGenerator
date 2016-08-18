projectName = "LocalStuff"
projectOrganization = "MY_PROJECT_ORGANIZATION"

project.name = projectName
project.organization = projectOrganization

project.debug_configuration :Dev
project.release_configuration :Staging
project.release_configuration :Prod

application_for :ios, 8.0 do |target|

    target.name = projectName
    target.language = :swift

    target.all_configurations.each do |configuration|

        configuration.settings["INFOPLIST_FILE"] = projectName+"/Info.plist"

        if configuration.name == "Dev"
            configuration.product_bundle_identifier = "com."+projectName+".dev"
        end
        if configuration.name == "Staging"
            configuration.product_bundle_identifier = "com."+projectName+".stg"
        end
        if configuration.name == "Prod"
            configuration.product_bundle_identifier = "com."+projectName
        end

        target.include_files = [projectName+"/**/*.*"]
    end
end
