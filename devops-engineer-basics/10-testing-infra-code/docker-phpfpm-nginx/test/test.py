def test_passwd_file(host):
    assert host.system_info.type == "linux"
    assert host.system_info.distribution == "Alpine"

def test_nginx_is_installed(host):
    nginx = host.package("nginx")
    assert nginx.is_installed
    assert nginx.version.startswith("1.2")


# def test_nginx_running_and_enabled(host):
#     nginx = host.service("nginx")
#     assert nginx.is_running
#     assert nginx.is_enabled