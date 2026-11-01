package y0;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Base64;
import android.util.Xml;
import androidx.core.R$styleable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    static class a {
        static int a(TypedArray typedArray, int i11) {
            return typedArray.getType(i11);
        }
    }

    public interface b {
    }

    public static final class c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d[] f78512a;

        public c(d[] dVarArr) {
            this.f78512a = dVarArr;
        }

        public d[] a() {
            return this.f78512a;
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f78513a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f78514b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f78515c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f78516d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f78517e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f78518f;

        public d(String str, int i11, boolean z10, String str2, int i12, int i13) {
            this.f78513a = str;
            this.f78514b = i11;
            this.f78515c = z10;
            this.f78516d = str2;
            this.f78517e = i12;
            this.f78518f = i13;
        }

        public String a() {
            return this.f78513a;
        }

        public int b() {
            return this.f78518f;
        }

        public int c() {
            return this.f78517e;
        }

        public String d() {
            return this.f78516d;
        }

        public int e() {
            return this.f78514b;
        }

        public boolean f() {
            return this.f78515c;
        }
    }

    /* JADX INFO: renamed from: y0.e$e, reason: collision with other inner class name */
    public static final class C0965e implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.core.provider.e f78519a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.core.provider.e f78520b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f78521c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f78522d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f78523e;

        public C0965e(androidx.core.provider.e eVar, androidx.core.provider.e eVar2, int i11, int i12, String str) {
            this.f78519a = eVar;
            this.f78520b = eVar2;
            this.f78522d = i11;
            this.f78521c = i12;
            this.f78523e = str;
        }

        public androidx.core.provider.e a() {
            return this.f78520b;
        }

        public int b() {
            return this.f78522d;
        }

        public androidx.core.provider.e c() {
            return this.f78519a;
        }

        public String d() {
            return this.f78523e;
        }

        public int e() {
            return this.f78521c;
        }
    }

    private static int a(TypedArray typedArray, int i11) {
        return a.a(typedArray, i11);
    }

    public static b b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List c(Resources resources, int i11) {
        if (i11 == 0) {
            return Collections.emptyList();
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i11);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i12 = 0; i12 < typedArrayObtainTypedArray.length(); i12++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i12, 0);
                    if (resourceId != 0) {
                        arrayList.add(h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(h(resources.getStringArray(i11)));
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    private static b d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return e(xmlPullParser, resources);
        }
        g(xmlPullParser);
        return null;
    }

    private static b e(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.FontFamily);
        String string = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderAuthority);
        String string2 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderPackage);
        String string3 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderQuery);
        String string4 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderFallbackQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(R$styleable.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(R$styleable.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(R$styleable.FontFamily_fontProviderFetchTimeout, 500);
        String string5 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderSystemFontFamily);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                g(xmlPullParser);
            }
            List listC = c(resources, resourceId);
            return new C0965e(new androidx.core.provider.e(string, string2, string3, listC), string4 != null ? new androidx.core.provider.e(string, string2, string4, listC) : null, integer, integer2, string5);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(f(xmlPullParser, resources));
                } else {
                    g(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new c((d[]) arrayList.toArray(new d[0]));
    }

    private static d f(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.FontFamilyFont);
        int i11 = typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_fontWeight) ? R$styleable.FontFamilyFont_fontWeight : R$styleable.FontFamilyFont_android_fontWeight, 400);
        boolean z10 = 1 == typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_fontStyle) ? R$styleable.FontFamilyFont_fontStyle : R$styleable.FontFamilyFont_android_fontStyle, 0);
        int i12 = typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_ttcIndex) ? R$styleable.FontFamilyFont_ttcIndex : R$styleable.FontFamilyFont_android_ttcIndex;
        String string = typedArrayObtainAttributes.getString(typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_fontVariationSettings) ? R$styleable.FontFamilyFont_fontVariationSettings : R$styleable.FontFamilyFont_android_fontVariationSettings);
        int i13 = typedArrayObtainAttributes.getInt(i12, 0);
        int i14 = typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_font) ? R$styleable.FontFamilyFont_font : R$styleable.FontFamilyFont_android_font;
        int resourceId = typedArrayObtainAttributes.getResourceId(i14, 0);
        String string2 = typedArrayObtainAttributes.getString(i14);
        typedArrayObtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            g(xmlPullParser);
        }
        return new d(string2, i11, z10, string, i13, resourceId);
    }

    private static void g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i11 = 1;
        while (i11 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i11++;
            } else if (next == 3) {
                i11--;
            }
        }
    }

    private static List h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
