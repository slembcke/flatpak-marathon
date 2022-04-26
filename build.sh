flatpak-builder --repo=repo --force-clean build org.lhowon.alephone.marathon1.yml
flatpak-builder --repo=repo --force-clean build org.lhowon.alephone.marathon2.yml
flatpak-builder --repo=repo --force-clean build org.lhowon.alephone.marathon3.yml

flatpak build-bundle repo marathon1.flatpak org.lhowon.alephone.marathon1 &
flatpak build-bundle repo marathon2.flatpak org.lhowon.alephone.marathon2 &
flatpak build-bundle repo marathon3.flatpak org.lhowon.alephone.marathon3 &
wait
