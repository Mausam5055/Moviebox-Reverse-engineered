package com.cloud.hisavana.sdk.data.bean.request;

/* JADX INFO: loaded from: classes3.dex */
public class AdxRequestVideoParam {
    public String app_ver;

    /* JADX INFO: renamed from: bg, reason: collision with root package name */
    public String f22378bg;
    public int debugger;
    public int height;
    public String imp_track;
    public String pic;
    public String pid;
    public String sdk_ver;
    public String src;
    public String type;
    public String uid;
    public int width;

    public String toString() {
        return ("width=" + this.width + "&height=" + this.height + "&src=" + this.src + "&pic=" + this.pic + "&type=" + this.type + "&bg=" + this.f22378bg + "&uid=" + this.uid + "&pid=" + this.pid + "&sdk_ver=" + this.sdk_ver + "&app_ver=" + this.app_ver + "&debugger=" + this.debugger + "&imp_track=" + this.imp_track).replaceAll("\"", "");
    }
}
