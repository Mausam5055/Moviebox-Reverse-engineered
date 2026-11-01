package androidx.media3.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class b1 extends FrameLayout implements SubtitleView.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.ui.a f13639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WebView f13640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f13641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private androidx.media3.ui.b f13642d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f13643e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f13644f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f13645g;

    class a extends WebView {
        a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.webkit.WebView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            super.onTouchEvent(motionEvent);
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            super.performClick();
            return false;
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f13647a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f13647a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13647a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13647a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public b1(Context context) {
        this(context, null);
    }

    public b1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13641c = Collections.emptyList();
        this.f13642d = androidx.media3.ui.b.f13631g;
        this.f13643e = 0.0533f;
        this.f13644f = 0;
        this.f13645g = 0.08f;
        androidx.media3.ui.a aVar = new androidx.media3.ui.a(context, attributeSet);
        this.f13639a = aVar;
        a aVar2 = new a(context, attributeSet);
        this.f13640b = aVar2;
        aVar2.setBackgroundColor(0);
        addView(aVar);
        addView(aVar2);
    }

    private static int b(int i11) {
        if (i11 != 1) {
            return i11 != 2 ? 0 : -100;
        }
        return -50;
    }

    private static String c(Layout.Alignment alignment) {
        if (alignment == null) {
            return TtmlNode.CENTER;
        }
        int i11 = b.f13647a[alignment.ordinal()];
        if (i11 != 1) {
            return i11 != 2 ? TtmlNode.CENTER : TtmlNode.END;
        }
        return "start";
    }

    private static String d(androidx.media3.ui.b bVar) {
        int i11 = bVar.f13635d;
        if (i11 == 1) {
            return androidx.media3.common.util.a1.G("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", g.b(bVar.f13636e));
        }
        if (i11 == 2) {
            return androidx.media3.common.util.a1.G("0.1em 0.12em 0.15em %s", g.b(bVar.f13636e));
        }
        if (i11 != 3) {
            return i11 != 4 ? "unset" : androidx.media3.common.util.a1.G("-0.05em -0.05em 0.15em %s", g.b(bVar.f13636e));
        }
        return androidx.media3.common.util.a1.G("0.06em 0.08em 0.15em %s", g.b(bVar.f13636e));
    }

    private String e(int i11, float f11) {
        float fH = x0.h(i11, f11, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return fH == -3.4028235E38f ? "unset" : androidx.media3.common.util.a1.G("%.2fpx", Float.valueOf(fH / getContext().getResources().getDisplayMetrics().density));
    }

    private static String f(int i11) {
        if (i11 != 1) {
            return i11 != 2 ? "horizontal-tb" : "vertical-lr";
        }
        return "vertical-rl";
    }

    private static String h(u1.a aVar) {
        float f11 = aVar.f76574q;
        if (f11 == 0.0f) {
            return "";
        }
        int i11 = aVar.f76573p;
        return androidx.media3.common.util.a1.G("%s(%.2fdeg)", (i11 == 2 || i11 == 1) ? "skewY" : "skewX", Float.valueOf(f11));
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:26:0x0107  */
    /* JADX WARN: Code duplicated, block: B:29:0x0121  */
    /* JADX WARN: Code duplicated, block: B:30:0x0124  */
    /* JADX WARN: Code duplicated, block: B:33:0x013b  */
    /* JADX WARN: Code duplicated, block: B:35:0x013e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x0140  */
    /* JADX WARN: Code duplicated, block: B:38:0x0144 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x0147  */
    /* JADX WARN: Code duplicated, block: B:42:0x014f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x015d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0185  */
    /* JADX WARN: Code duplicated, block: B:59:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:63:0x0223  */
    /* JADX WARN: Code duplicated, block: B:64:0x023f  */
    private void i() {
        String strG;
        int iB;
        int i11;
        float f11;
        String strG2;
        int i12;
        int i13;
        int i14;
        String str;
        String str2;
        String str3;
        int i15;
        String str4;
        int i16;
        r0.b bVarA;
        Iterator it;
        r0.b bVar;
        Layout.Alignment alignment;
        String str5;
        boolean z10;
        b1 b1Var = this;
        StringBuilder sb2 = new StringBuilder();
        float f12 = 1.2f;
        int i17 = 0;
        int i18 = 1;
        sb2.append(androidx.media3.common.util.a1.G("<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", g.b(b1Var.f13642d.f13632a), b1Var.e(b1Var.f13644f, b1Var.f13643e), Float.valueOf(1.2f), d(b1Var.f13642d)));
        HashMap map = new HashMap();
        map.put(g.a("default_bg"), androidx.media3.common.util.a1.G("background-color:%s;", g.b(b1Var.f13642d.f13633b)));
        int i19 = 0;
        while (i19 < b1Var.f13641c.size()) {
            u1.a aVar = (u1.a) b1Var.f13641c.get(i19);
            float f13 = aVar.f76565h;
            float f14 = f13 != -3.4028235E38f ? f13 * 100.0f : 50.0f;
            int iB2 = b(aVar.f76566i);
            float f15 = aVar.f76562e;
            if (f15 != -3.4028235E38f) {
                if (aVar.f76563f != i18) {
                    Float fValueOf = Float.valueOf(f15 * 100.0f);
                    Object[] objArr = new Object[i18];
                    objArr[i17] = fValueOf;
                    strG = androidx.media3.common.util.a1.G("%.2f%%", objArr);
                    iB = aVar.f76573p == i18 ? -b(aVar.f76564g) : b(aVar.f76564g);
                } else if (f15 >= 0.0f) {
                    Float fValueOf2 = Float.valueOf(f15 * f12);
                    Object[] objArr2 = new Object[i18];
                    objArr2[i17] = fValueOf2;
                    strG = androidx.media3.common.util.a1.G("%.2fem", objArr2);
                    iB = i17;
                    i11 = iB;
                } else {
                    Float fValueOf3 = Float.valueOf(((-f15) - 1.0f) * f12);
                    Object[] objArr3 = new Object[i18];
                    objArr3[i17] = fValueOf3;
                    strG = androidx.media3.common.util.a1.G("%.2fem", objArr3);
                    i11 = i18;
                    iB = i17;
                }
                f11 = aVar.f76567j;
                if (f11 != -3.4028235E38f) {
                    Object[] objArr4 = new Object[i18];
                    objArr4[i17] = Float.valueOf(f11 * 100.0f);
                    strG2 = androidx.media3.common.util.a1.G("%.2f%%", objArr4);
                } else {
                    strG2 = "fit-content";
                }
                String strC = c(aVar.f76559b);
                String strF = f(aVar.f76573p);
                String strE = b1Var.e(aVar.f76571n, aVar.f76572o);
                if (aVar.f76569l) {
                    i12 = aVar.f76570m;
                } else {
                    i12 = b1Var.f13642d.f13634c;
                }
                String strB = g.b(i12);
                i13 = iB;
                i14 = aVar.f76573p;
                str = TtmlNode.RIGHT;
                str2 = IntegrationConstants.TAB_BAR_POSITION_TOP;
                str3 = TtmlNode.LEFT;
                if (i14 != 1) {
                    if (i11 != 0) {
                        str = TtmlNode.LEFT;
                    }
                    str3 = IntegrationConstants.TAB_BAR_POSITION_TOP;
                    i15 = 2;
                    str2 = str;
                } else if (i14 != 2) {
                    if (i11 != 0) {
                        str2 = IntegrationConstants.TAB_BAR_POSITION_DEFAULT;
                    }
                    i15 = 2;
                } else {
                    if (i11 == 0) {
                        str = TtmlNode.LEFT;
                    }
                    str3 = IntegrationConstants.TAB_BAR_POSITION_TOP;
                    i15 = 2;
                    str2 = str;
                }
                if (i14 != i15 || i14 == 1) {
                    str4 = "height";
                    i16 = i13;
                    i13 = iB2;
                } else {
                    str4 = "width";
                    i16 = iB2;
                }
                bVarA = r0.a(aVar.f76558a, getContext().getResources().getDisplayMetrics().density);
                it = map.keySet().iterator();
                while (it.hasNext()) {
                    Iterator it2 = it;
                    String str6 = (String) it.next();
                    r0.b bVar2 = bVarA;
                    str5 = (String) map.put(str6, (String) map.get(str6));
                    if (str5 != null || str5.equals(map.get(str6))) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    androidx.media3.common.util.a.g(z10);
                    it = it2;
                    bVarA = bVar2;
                }
                bVar = bVarA;
                HashMap map2 = map;
                sb2.append(androidx.media3.common.util.a1.G("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i19), str3, Float.valueOf(f14), str2, strG, str4, strG2, strC, strF, strE, strB, Integer.valueOf(i16), Integer.valueOf(i13), h(aVar)));
                sb2.append(androidx.media3.common.util.a1.G("<span class='%s'>", "default_bg"));
                alignment = aVar.f76560c;
                if (alignment != null) {
                    sb2.append(androidx.media3.common.util.a1.G("<span style='display:inline-block; text-align:%s;'>", c(alignment)));
                    sb2.append(bVar.f13714a);
                    sb2.append("</span>");
                } else {
                    sb2.append(bVar.f13714a);
                }
                sb2.append("</span>");
                sb2.append("</div>");
                i18 = 1;
                i19++;
                f12 = 1.2f;
                i17 = 0;
                map = map2;
                b1Var = this;
            } else {
                Object[] objArr5 = new Object[i18];
                objArr5[i17] = Float.valueOf((1.0f - b1Var.f13645g) * 100.0f);
                strG = androidx.media3.common.util.a1.G("%.2f%%", objArr5);
                iB = -100;
            }
            i11 = i17;
            f11 = aVar.f76567j;
            if (f11 != -3.4028235E38f) {
                Object[] objArr6 = new Object[i18];
                objArr6[i17] = Float.valueOf(f11 * 100.0f);
                strG2 = androidx.media3.common.util.a1.G("%.2f%%", objArr6);
            } else {
                strG2 = "fit-content";
            }
            String strC2 = c(aVar.f76559b);
            String strF2 = f(aVar.f76573p);
            String strE2 = b1Var.e(aVar.f76571n, aVar.f76572o);
            if (aVar.f76569l) {
                i12 = aVar.f76570m;
            } else {
                i12 = b1Var.f13642d.f13634c;
            }
            String strB2 = g.b(i12);
            i13 = iB;
            i14 = aVar.f76573p;
            str = TtmlNode.RIGHT;
            str2 = IntegrationConstants.TAB_BAR_POSITION_TOP;
            str3 = TtmlNode.LEFT;
            if (i14 != 1) {
                if (i11 != 0) {
                    str = TtmlNode.LEFT;
                }
                str3 = IntegrationConstants.TAB_BAR_POSITION_TOP;
                i15 = 2;
                str2 = str;
            } else if (i14 != 2) {
                if (i11 != 0) {
                    str2 = IntegrationConstants.TAB_BAR_POSITION_DEFAULT;
                }
                i15 = 2;
            } else {
                if (i11 == 0) {
                    str = TtmlNode.LEFT;
                }
                str3 = IntegrationConstants.TAB_BAR_POSITION_TOP;
                i15 = 2;
                str2 = str;
            }
            if (i14 != i15) {
                str4 = "height";
                i16 = i13;
                i13 = iB2;
            } else {
                str4 = "height";
                i16 = i13;
                i13 = iB2;
            }
            bVarA = r0.a(aVar.f76558a, getContext().getResources().getDisplayMetrics().density);
            it = map.keySet().iterator();
            while (it.hasNext()) {
                Iterator it3 = it;
                String str7 = (String) it.next();
                r0.b bVar3 = bVarA;
                str5 = (String) map.put(str7, (String) map.get(str7));
                if (str5 != null) {
                    z10 = true;
                } else {
                    z10 = true;
                }
                androidx.media3.common.util.a.g(z10);
                it = it3;
                bVarA = bVar3;
            }
            bVar = bVarA;
            HashMap map3 = map;
            sb2.append(androidx.media3.common.util.a1.G("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i19), str3, Float.valueOf(f14), str2, strG, str4, strG2, strC2, strF2, strE2, strB2, Integer.valueOf(i16), Integer.valueOf(i13), h(aVar)));
            sb2.append(androidx.media3.common.util.a1.G("<span class='%s'>", "default_bg"));
            alignment = aVar.f76560c;
            if (alignment != null) {
                sb2.append(androidx.media3.common.util.a1.G("<span style='display:inline-block; text-align:%s;'>", c(alignment)));
                sb2.append(bVar.f13714a);
                sb2.append("</span>");
            } else {
                sb2.append(bVar.f13714a);
            }
            sb2.append("</span>");
            sb2.append("</div>");
            i18 = 1;
            i19++;
            f12 = 1.2f;
            i17 = 0;
            map = map3;
            b1Var = this;
        }
        Map map4 = map;
        sb2.append("</div></body></html>");
        StringBuilder sb3 = new StringBuilder();
        sb3.append("<html><head><style>");
        for (String str8 : map4.keySet()) {
            sb3.append(str8);
            sb3.append("{");
            sb3.append((String) map4.get(str8));
            sb3.append("}");
        }
        sb3.append("</style></head>");
        sb2.insert(0, sb3.toString());
        this.f13640b.loadData(Base64.encodeToString(sb2.toString().getBytes(StandardCharsets.UTF_8), 1), "text/html", "base64");
    }

    @Override // androidx.media3.ui.SubtitleView.a
    public void a(List list, androidx.media3.ui.b bVar, float f11, int i11, float f12) {
        this.f13642d = bVar;
        this.f13643e = f11;
        this.f13644f = i11;
        this.f13645g = f12;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i12 = 0; i12 < list.size(); i12++) {
            u1.a aVar = (u1.a) list.get(i12);
            if (aVar.f76561d != null) {
                arrayList.add(aVar);
            } else {
                arrayList2.add(aVar);
            }
        }
        if (!this.f13641c.isEmpty() || !arrayList2.isEmpty()) {
            this.f13641c = arrayList2;
            i();
        }
        this.f13639a.a(arrayList, bVar, f11, i11, f12);
        invalidate();
    }

    public void g() {
        this.f13640b.destroy();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        if (!z10 || this.f13641c.isEmpty()) {
            return;
        }
        i();
    }
}
