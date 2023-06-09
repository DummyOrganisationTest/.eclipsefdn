
local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('DummyOrganisationTest') {
    settings+: {
      billing_email: "francisco.perez@eclipse-foundation.org",
      dependabot_alerts_enabled_for_new_repositories: false,
      dependabot_security_updates_enabled_for_new_repositories: false,
      dependency_graph_enabled_for_new_repositories: false,
      members_can_change_repo_visibility: true,
      members_can_create_private_repositories: true,
      members_can_create_public_repositories: true,
      members_can_create_teams: true,
      members_can_delete_repositories: true,
      packages_containers_internal: false,
      packages_containers_public: false,
      readers_can_create_discussions: true,
      security_managers: [],
      two_factor_requirement: false,
      web_commit_signoff_required: false,
    },
    _repositories+:: [
      orgs.newRepo('.allstar') {
        allow_forking: false,
        allow_update_branch: false,
        dependabot_alerts_enabled: false,
        has_wiki: false,
        private: true,
        template_repository: "jeffmendoza/dot-allstar-quickstart",
        web_commit_signoff_required: false,
      },
      orgs.newRepo('.github') {
        allow_update_branch: false,
        dependabot_alerts_enabled: false,
        secret_scanning: "disabled",
        secret_scanning_push_protection: "disabled",
        web_commit_signoff_required: false,
      },
      orgs.newRepo('.github-private') {
        allow_forking: false,
        allow_update_branch: false,
        dependabot_alerts_enabled: false,
        has_wiki: false,
        private: true,
        web_commit_signoff_required: false,
      },
      orgs.newRepo('dummy-repo') {
        allow_update_branch: false,
        dependabot_alerts_enabled: false,
        description: "A dummy repo to test out any SLSA tool",
        secret_scanning: "disabled",
        secret_scanning_push_protection: "disabled",
        web_commit_signoff_required: false,
      },
      orgs.newRepo('testrepo') {
        allow_update_branch: false,
        has_wiki: false,
        secret_scanning: "disabled",
        secret_scanning_push_protection: "disabled",
        web_commit_signoff_required: false,
      },
      orgs.newRepo('test_pr') {
        allow_update_branch: false,
        has_wiki: false,
        secret_scanning: "disabled",
        secret_scanning_push_protection: "disabled",
        web_commit_signoff_required: false,
      },
      orgs.newRepo('test_pr2') {
        allow_update_branch: false,
        has_wiki: false,
        secret_scanning: "disabled",
        secret_scanning_push_protection: "disabled",
        web_commit_signoff_required: false,
      },
      orgs.newRepo('test_dependabot') {
        allow_update_branch: false,
        has_wiki: false,
        secret_scanning: "disabled",
        secret_scanning_push_protection: "disabled",
        web_commit_signoff_required: false,
      },
    ],
}
