package com.mbridge.msdk.dycreator.engine;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.dycreator.baseview.GradientOrientationUtils;
import com.mbridge.msdk.dycreator.utils.e;
import com.mbridge.msdk.dycreator.utils.g;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.gslb.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.lang.reflect.Field;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile b f34825g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SoftReference<HashMap<String, c>> f34826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SoftReference<HashMap<String, String>> f34827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SoftReference<HashMap<String, c>> f34828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f34829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f34830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f34831f;

    private b() {
    }

    public static b a() {
        if (f34825g == null) {
            synchronized (b.class) {
                try {
                    if (f34825g == null) {
                        f34825g = new b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34825g;
    }

    public int a(String str) {
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            int iIndexOf = str.indexOf(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);
            int iIndexOf2 = str.indexOf("s");
            if (iIndexOf == -1) {
                iIndexOf = iIndexOf2;
            }
            int i11 = Integer.parseInt(str.substring(0, iIndexOf));
            if (str.contains(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D)) {
                return e.a(this.f34831f, i11);
            }
            str.contains("s");
            return i11;
        }
    }

    public GradientDrawable a(String[] strArr) {
        try {
            GradientDrawable gradientDrawable = new GradientDrawable(GradientOrientationUtils.getOrientation(strArr[2]), new int[]{Color.parseColor(strArr[0]), Color.parseColor(strArr[1])});
            gradientDrawable.setGradientType(0);
            return gradientDrawable;
        } catch (Exception e11) {
            o0.b("MBResource", e11.getMessage());
            return null;
        }
    }

    public void a(Context context) {
        try {
            if (e.a(context).heightPixels <= 320 || g.f34898a) {
                this.f34830e = "/drawable-mdpi/";
            } else {
                this.f34830e = "/drawable-hdpi/";
            }
            this.f34831f = context;
            com.mbridge.msdk.dycreator.utils.b.f34895a = a().d();
        } catch (Exception e11) {
            o0.b("MBResource", e11.getMessage());
        }
    }

    public void a(Context context, String str) {
        try {
            if (g.f34898a) {
                this.f34829d = context.getFilesDir().toString();
            } else {
                this.f34829d = str;
            }
            if (e.a(context).heightPixels <= 320 || g.f34898a) {
                this.f34830e = "/drawable-mdpi/";
            } else {
                this.f34830e = "/drawable-hdpi/";
            }
            this.f34831f = context;
            com.mbridge.msdk.dycreator.utils.b.f34895a = a().d();
        } catch (Exception e11) {
            o0.b("MBResource", e11.getMessage());
        }
    }

    public void a(String str, ImageView imageView) {
        Context context;
        if (str == null || !str.startsWith("@drawable/") || (context = this.f34831f) == null) {
            return;
        }
        try {
            Resources resources = context.getResources();
            String strH = com.mbridge.msdk.foundation.controller.c.m().h();
            if (TextUtils.isEmpty(strH)) {
                strH = this.f34831f.getPackageName();
            }
            imageView.setImageResource(resources.getIdentifier(str, "drawable", strH));
        } catch (Exception e11) {
            o0.b("MBResource", e11.getMessage());
        }
    }

    public int b(String str) {
        String[] strArrSplit = str.toUpperCase().split("\\|");
        int i11 = 48;
        try {
            Class<?> cls = Class.forName("android.view.Gravity");
            for (String str2 : strArrSplit) {
                i11 = cls.getField(str2).getInt(null);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return i11;
    }

    public HashMap b() {
        SoftReference<HashMap<String, c>> softReference = this.f34826a;
        if (softReference == null || softReference.get() == null) {
            HashMap map = new HashMap(45);
            map.put("layout_width", c.layout_width);
            map.put("layout_height", c.layout_height);
            map.put("orientation", c.orientation);
            map.put("layout_centerHorizontal", c.layout_centerHorizontal);
            map.put("layout_centerVertical", c.layout_centerVertical);
            c cVar = c.layout_marginLeft;
            map.put("layout_marginLeft", cVar);
            c cVar2 = c.layout_marginRight;
            map.put("layout_marginRight", cVar2);
            map.put("layout_margin", c.layout_margin);
            map.put("layout_gravity", c.layout_gravity);
            map.put("layout_alignParentRight", c.layout_alignParentRight);
            map.put("layout_weight", c.layout_weight);
            map.put("contentDescription", c.contentDescription);
            map.put("gravity", c.gravity);
            map.put("id", c.id);
            map.put("layout_below", c.layout_below);
            map.put("layout_above", c.layout_above);
            map.put("layout_toLeftOf", c.layout_toLeftOf);
            map.put("layout_toRightOf", c.layout_toRightOf);
            map.put("layout_toEndOf", c.layout_toEndOf);
            map.put("background", c.background);
            map.put("layout_marginTop", c.layout_marginTop);
            map.put("layout_marginBottom", c.layout_marginBottom);
            map.put("layout_marginLeft", cVar);
            map.put("layout_marginRight", cVar2);
            map.put("layout_alignParentBottom", c.layout_alignParentBottom);
            map.put("layout_alignParentTop", c.layout_alignParentTop);
            map.put("layout_alignParentLeft", c.layout_alignParentLeft);
            map.put("layout_alignWithParentIfMissing", c.layout_alignWithParentIfMissing);
            map.put("layout_alignTop", c.layout_alignTop);
            map.put("layout_alignBottom", c.layout_alignBottom);
            map.put("layout_alignLeft", c.layout_alignLeft);
            map.put("layout_alignRight", c.layout_alignRight);
            map.put("layout_centerInParent", c.layout_centerInParent);
            map.put("layout_alignParentEnd", c.layout_alignParentEnd);
            this.f34826a = new SoftReference<>(map);
        }
        return this.f34826a.get();
    }

    public int c(String str) {
        if (this.f34831f != null) {
            String strH = com.mbridge.msdk.foundation.controller.c.m().h();
            if (TextUtils.isEmpty(strH)) {
                strH = this.f34831f.getPackageName();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strH);
            sb2.append(".R$");
            String[] strArrSplit = str.split("\\.");
            sb2.append(strArrSplit[1]);
            try {
                Class<?> cls = Class.forName(sb2.toString());
                Object objNewInstance = cls.newInstance();
                Field declaredField = cls.getDeclaredField(strArrSplit[2]);
                declaredField.setAccessible(true);
                return ((Integer) declaredField.get(objNewInstance)).intValue();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return 0;
    }

    public HashMap<String, c> c() {
        SoftReference<HashMap<String, c>> softReference = this.f34828c;
        if (softReference == null || softReference.get() == null) {
            HashMap map = new HashMap(55);
            map.put("id", c.id);
            map.put(MimeTypes.BASE_TYPE_TEXT, c.text);
            map.put("ellipsize", c.ellipsize);
            map.put("singleLine", c.singleLine);
            map.put("lines", c.lines);
            map.put("maxLength", c.maxLength);
            map.put("drawableLeft", c.drawableLeft);
            map.put("drawablePadding", c.drawablePadding);
            map.put("fadingEdge", c.fadingEdge);
            map.put("scrollHorizontally", c.scrollHorizontally);
            map.put("textColor", c.textColor);
            map.put("textSize", c.textSize);
            map.put("visibility", c.visibility);
            c cVar = c.background;
            map.put("background", cVar);
            map.put("textStyle", c.textStyle);
            map.put(TtmlNode.TAG_STYLE, c.style);
            map.put("layout_width", c.layout_width);
            map.put("layout_height", c.layout_height);
            map.put("layout_below", c.layout_below);
            map.put("layout_centerInParent", c.layout_centerInParent);
            map.put("contentDescription", c.contentDescription);
            map.put("src", c.src);
            map.put("gravity", c.gravity);
            map.put("orientation", c.orientation);
            map.put("numColumns", c.numColumns);
            map.put("verticalSpacing", c.verticalSpacing);
            map.put("horizontalSpacing", c.horizontalSpacing);
            map.put("background", cVar);
            map.put("layout_marginBottom", c.layout_marginBottom);
            map.put("scaleType", c.scaleType);
            map.put("tag", c.tag);
            map.put("layout_gravity", c.layout_gravity);
            map.put("parent_view", c.parent_view);
            map.put("padding", c.padding);
            map.put("paddingTop", c.paddingTop);
            map.put("paddingBottom", c.paddingBottom);
            map.put("paddingLeft", c.paddingLeft);
            map.put("paddingRight", c.paddingRight);
            map.put("divider", c.divider);
            map.put("scrollbars", c.scrollbars);
            map.put("listSelector", c.listSelector);
            this.f34828c = new SoftReference<>(map);
        }
        return this.f34828c.get();
    }

    public int d(String str) {
        if (TextUtils.isEmpty(str)) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        if (!str.startsWith(Utils.SEPARATOR)) {
            if (!str.startsWith("@color/")) {
                return ViewCompat.MEASURED_STATE_MASK;
            }
            return com.mbridge.msdk.foundation.controller.c.m().d().getColor(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str.substring(7), TtmlNode.ATTR_TTS_COLOR));
        }
        int length = str.length();
        if (length == 7) {
            return (int) Long.decode(str.replace(Utils.SEPARATOR, "#FF")).longValue();
        }
        if (length == 9) {
            return (int) Long.decode(str).longValue();
        }
        g.a("返回白色背景");
        return -1;
    }

    public HashMap<String, String> d() {
        InputStream inputStreamOpen;
        try {
            inputStreamOpen = this.f34831f.getAssets().open("rv_binddatas.xml");
        } catch (IOException e11) {
            e11.printStackTrace();
            inputStreamOpen = null;
        }
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        try {
            xmlPullParserNewPullParser.setInput(inputStreamOpen, "utf-8");
            HashMap<String, String> map = new HashMap<>();
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                if (eventType == 2 && "string".equals(xmlPullParserNewPullParser.getName())) {
                    map.put(xmlPullParserNewPullParser.getAttributeValue(0), xmlPullParserNewPullParser.nextText());
                }
            }
            return map;
        } catch (Exception e12) {
            e12.printStackTrace();
            return null;
        }
    }

    public View e(String str) {
        if (this.f34831f != null) {
            try {
                a aVar = new a(this.f34831f);
                new String();
                g.a(str.toString());
                return aVar.a(str, (ViewGroup) null);
            } catch (Exception e11) {
                o0.b("MBResource", e11.getMessage());
            }
        }
        return null;
    }

    public String f(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.startsWith("@")) {
            return str;
        }
        SoftReference<HashMap<String, String>> softReference = this.f34827b;
        if (softReference == null || softReference.get() == null) {
            this.f34827b = new SoftReference<>(d());
        }
        String strSubstring = str.substring(8);
        if (this.f34827b.get() == null || this.f34827b.get().size() <= 0) {
            return null;
        }
        String str2 = this.f34827b.get().get(strSubstring);
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        try {
            return com.mbridge.msdk.foundation.controller.c.m().d().getString(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), strSubstring, "string"));
        } catch (Exception e11) {
            o0.b("MBResource", e11.getMessage());
            return null;
        }
    }
}
