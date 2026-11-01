package com.bykv.vk.openvk.preload.geckox.model;

import com.bykv.vk.openvk.preload.a.a.b;
import com.meituan.android.walle.ChannelReader;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class UpdatePackage {
    private String accessKey;

    @b(a = ChannelReader.CHANNEL_KEY)
    private String channel;

    @b(a = "channel_index")
    private int channelIndex;

    @b(a = "content")
    private Content content;

    @b(a = "group_name")
    private String groupName;
    private long localVersion;

    @b(a = "package_type")
    private int packageType;

    @b(a = "package_version")
    private long version;

    public static class Content {

        @b(a = "package")
        private Package fullPackage;

        @b(a = "patch")
        private Package patch;

        @b(a = "strategies")
        private Strategy strategy;
    }

    public static final class FileType {
        public static final int COMPRESSED_FILE = 0;
        public static final int MY_ARCHIVE_FILE = 2;
        public static final int UNCOMPRESSED_FILE = 1;
    }

    public static class Package {

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        @b(a = "id")
        long f20716id;

        @b(a = "size")
        long length;

        @b(a = "md5")
        String md5;

        @Deprecated
        String url;

        @b(a = "url_list")
        List<String> urlList;

        public Package() {
        }

        public Package(int i11, List<String> list, String str) {
            this.f20716id = i11;
            this.urlList = list;
            this.md5 = str;
        }

        public long getId() {
            return this.f20716id;
        }

        public long getLength() {
            return this.length;
        }

        public String getMd5() {
            return this.md5;
        }

        public String getUrl() {
            return this.url;
        }

        public List<String> getUrlList() {
            return this.urlList;
        }

        public void setId(int i11) {
            this.f20716id = i11;
        }

        public void setMd5(String str) {
            this.md5 = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public void setUrlList(List<String> list) {
            this.urlList = list;
        }

        public String toString() {
            return "Package{url='" + this.url + "', md5='" + this.md5 + "'}";
        }
    }

    public static class Strategy {

        @b(a = "del_if_download_failed")
        private boolean deleteIfFail;

        @b(a = "del_old_pkg_before_download")
        private boolean deleteOldPackageBeforeDownload;

        @b(a = "need_unzip")
        private boolean needUnzip;

        public Strategy(int i11) {
            this.deleteIfFail = i11 == 1;
        }

        public boolean isDeleteIfFail() {
            return this.deleteIfFail;
        }

        public boolean isDeleteOldPackageBeforeDownload() {
            return this.deleteOldPackageBeforeDownload;
        }

        public boolean isNeedUnzip() {
            return this.needUnzip;
        }

        public void setDeleteIfFail(boolean z10) {
            this.deleteIfFail = z10;
        }

        public void setDeleteOldPackageBeforeDownload(boolean z10) {
            this.deleteOldPackageBeforeDownload = z10;
        }

        public void setNeedUnzip(boolean z10) {
            this.needUnzip = z10;
        }
    }

    public UpdatePackage() {
    }

    public UpdatePackage(long j11, String str, Package r11, Package r12) {
        this.version = j11;
        this.channel = str;
        Content content = new Content();
        this.content = content;
        content.fullPackage = r11;
        this.content.patch = r12;
    }

    public String getAccessKey() {
        return this.accessKey;
    }

    public String getChannel() {
        return this.channel;
    }

    public int getChannelIndex() {
        return this.channelIndex;
    }

    public Package getFullPackage() {
        return this.content.fullPackage;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public long getLocalVersion() {
        return this.localVersion;
    }

    public int getPackageType() {
        return this.packageType;
    }

    public Package getPatch() {
        return this.content.patch;
    }

    public Strategy getStrategy() {
        return this.content.strategy;
    }

    public long getVersion() {
        return this.version;
    }

    public boolean isFullUpdate() {
        return getFullPackage() != null && getFullPackage().getUrlList().size() > 0;
    }

    public boolean isPatchUpdate() {
        return getPatch() != null && getPatch().getUrlList().size() > 0;
    }

    public void setAccessKey(String str) {
        this.accessKey = str;
    }

    public void setChannel(String str) {
        this.channel = str;
    }

    public void setChannelIndex(int i11) {
        this.channelIndex = i11;
    }

    public void setFullPackage(Package r11) {
        this.content.fullPackage = r11;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public void setLocalVersion(long j11) {
        this.localVersion = j11;
    }

    public void setPatch(Package r11) {
        this.content.patch = r11;
    }

    public void setStrategy(Strategy strategy) {
        this.content.strategy = strategy;
    }

    public void setVersion(long j11) {
        this.version = j11;
    }

    public String toString() {
        return "UpdatePackage{version=" + this.version + ", channel='" + this.channel + "', content=" + this.content + ", packageType=" + this.packageType + '}';
    }
}
