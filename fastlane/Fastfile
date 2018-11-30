# For a list of all available actions, check out
#
#     https://docs.fastlane.tools/actions
#
# For a list of all available plugins, check out
#
#     https://docs.fastlane.tools/plugins/available-plugins
#

# Uncomment the line if you want fastlane to automatically update itself
# update_fastlane

default_platform(:ios)

platform :ios do

  desc "Defining global variables"
  workspace = @WORKSPACE_PATH
  scheme = "CCI_Fabric_Test[workspace]"
  ipa_name = "Nevercode_CICD.ipa"

  # desc "Execute Unit test and call Crashlytics lane"
  # lane :start_lane do
  #
  #   puts "*********************************************************"
  #   puts "Launching fastlane with parameters: #{ipa_name}"
  #   puts "*********************************************************"
  #
  #    scan(devices: ["iPhone XR (12.1)", "iPhone X (12.1)", "iPhone XS (12.1)"],
  #             scheme: scheme)
  #   #ipa = ipa_name
  #   #CrashlyticsBeta ipa_name: ipa
  # end

  desc "Make an Archive and submit it to Crashlytics Beta for distribution among testers"
  lane :CrashlyticsBeta do

    puts "*********************************************************"
    puts "Starting building and distribuiting #{ipa_name}"
    puts "*********************************************************"

    scan(devices: ["iPhone XR (12.1)", "iPhone X (12.1)", "iPhone XS (12.1)"],
             scheme: scheme)

    gym(
      export_method: "development",
      workspace: workspace,
      configuration: "Debug",
      scheme: scheme,
      silent: true,
      output_directory: "../CrashlyticsBetaBuilds",
      output_name: ipa_name,
      export_options: {
        provisioningProfiles: {
            "it.jav.simone.CCI-Fabric-Test" => "Simone Development"
        }
      }
    )
    crashlytics(
      crashlytics_path: "Pods/Crashlytics/",
      api_token: "00c3bced7dd9c190768888daea4e69bb7f913e48",
      build_secret: "6631fbe0c8d72a0660ce262e58f25242042996b1034d863b0304144c7a46b111",
      ipa_path: "../CrashlyticsBetaBuilds/#{ipa_name}",
      notes: "Testing integration with Fastlane",
      groups: 'TCEU'
    )
  end

end
