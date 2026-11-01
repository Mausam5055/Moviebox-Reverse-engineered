package org.jsoup.parser;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Map f71839j = new HashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String[] f71840k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String[] f71841l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String[] f71842m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String[] f71843n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String[] f71844o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String[] f71845p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String[] f71846q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f71847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f71848b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f71849c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f71850d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f71851e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f71852f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f71853g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f71854h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f71855i = false;

    static {
        String[] strArr = {"html", TtmlNode.TAG_HEAD, TtmlNode.TAG_BODY, "frameset", "script", "noscript", TtmlNode.TAG_STYLE, "meta", "link", CampaignEx.JSON_KEY_TITLE, "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_PRE, TtmlNode.TAG_DIV, "blockquote", "hr", PlaceTypes.ADDRESS, "figure", "figcaption", "form", "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", MimeTypes.BASE_TYPE_AUDIO, "canvas", "details", "menu", "plaintext", "template", "article", "main", "svg", "math"};
        f71840k = strArr;
        f71841l = new String[]{"object", "base", "font", TtmlNode.TAG_TT, "i", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, TmcStartParams.KEY_URL_SHORT, "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", EventConstants.KEY_TIME, "acronym", "mark", "ruby", "rt", "rp", "a", "img", TtmlNode.TAG_BR, "wbr", "map", CampaignEx.JSON_KEY_AD_Q, "sub", "sup", "bdo", "iframe", "embed", TtmlNode.TAG_SPAN, "input", "select", "textarea", "label", "button", "optgroup", "option", "legend", "datalist", "keygen", "output", NotificationCompat.CATEGORY_PROGRESS, "meter", "area", "param", EventConstants.KEY_SOURCE, "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", EventConstants.KEY_SOURCE, "track", "data", "bdi", "s"};
        f71842m = new String[]{"meta", "link", "base", "frame", "img", TtmlNode.TAG_BR, "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", EventConstants.KEY_SOURCE, "track"};
        f71843n = new String[]{CampaignEx.JSON_KEY_TITLE, "a", TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", "h6", OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_PRE, PlaceTypes.ADDRESS, "li", "th", "td", "script", TtmlNode.TAG_STYLE, "ins", "del", "s"};
        f71844o = new String[]{OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_PRE, "plaintext", CampaignEx.JSON_KEY_TITLE, "textarea"};
        f71845p = new String[]{"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};
        f71846q = new String[]{"input", "keygen", "object", "select", "textarea"};
        for (String str : strArr) {
            i(new f(str));
        }
        for (String str2 : f71841l) {
            f fVar = new f(str2);
            fVar.f71848b = false;
            fVar.f71849c = false;
            i(fVar);
        }
        for (String str3 : f71842m) {
            f fVar2 = (f) f71839j.get(str3);
            org.jsoup.helper.d.j(fVar2);
            fVar2.f71850d = false;
            fVar2.f71851e = true;
        }
        for (String str4 : f71843n) {
            f fVar3 = (f) f71839j.get(str4);
            org.jsoup.helper.d.j(fVar3);
            fVar3.f71849c = false;
        }
        for (String str5 : f71844o) {
            f fVar4 = (f) f71839j.get(str5);
            org.jsoup.helper.d.j(fVar4);
            fVar4.f71853g = true;
        }
        for (String str6 : f71845p) {
            f fVar5 = (f) f71839j.get(str6);
            org.jsoup.helper.d.j(fVar5);
            fVar5.f71854h = true;
        }
        for (String str7 : f71846q) {
            f fVar6 = (f) f71839j.get(str7);
            org.jsoup.helper.d.j(fVar6);
            fVar6.f71855i = true;
        }
    }

    private f(String str) {
        this.f71847a = str;
    }

    private static void i(f fVar) {
        f71839j.put(fVar.f71847a, fVar);
    }

    public static f k(String str) {
        return l(str, d.f71832d);
    }

    public static f l(String str, d dVar) {
        org.jsoup.helper.d.j(str);
        Map map = f71839j;
        f fVar = (f) map.get(str);
        if (fVar != null) {
            return fVar;
        }
        String strB = dVar.b(str);
        org.jsoup.helper.d.h(strB);
        f fVar2 = (f) map.get(strB);
        if (fVar2 != null) {
            return fVar2;
        }
        f fVar3 = new f(strB);
        fVar3.f71848b = false;
        return fVar3;
    }

    public boolean a() {
        return this.f71849c;
    }

    public String b() {
        return this.f71847a;
    }

    public boolean c() {
        return this.f71848b;
    }

    public boolean d() {
        return this.f71851e;
    }

    public boolean e() {
        return this.f71854h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f71847a.equals(fVar.f71847a) && this.f71850d == fVar.f71850d && this.f71851e == fVar.f71851e && this.f71849c == fVar.f71849c && this.f71848b == fVar.f71848b && this.f71853g == fVar.f71853g && this.f71852f == fVar.f71852f && this.f71854h == fVar.f71854h && this.f71855i == fVar.f71855i;
    }

    public boolean f() {
        return f71839j.containsKey(this.f71847a);
    }

    public boolean g() {
        return this.f71851e || this.f71852f;
    }

    public boolean h() {
        return this.f71853g;
    }

    public int hashCode() {
        return (((((((((((((((this.f71847a.hashCode() * 31) + (this.f71848b ? 1 : 0)) * 31) + (this.f71849c ? 1 : 0)) * 31) + (this.f71850d ? 1 : 0)) * 31) + (this.f71851e ? 1 : 0)) * 31) + (this.f71852f ? 1 : 0)) * 31) + (this.f71853g ? 1 : 0)) * 31) + (this.f71854h ? 1 : 0)) * 31) + (this.f71855i ? 1 : 0);
    }

    f j() {
        this.f71852f = true;
        return this;
    }

    public String toString() {
        return this.f71847a;
    }
}
