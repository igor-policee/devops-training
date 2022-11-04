def test_system_info(host):
    assert host.system_info.type == "linux"
    assert host.system_info.distribution == "alpine"


def test_nginx_is_installed(host):
    nginx = host.package("nginx")
    assert nginx.is_installed
    assert nginx.version.startswith("1.1")
