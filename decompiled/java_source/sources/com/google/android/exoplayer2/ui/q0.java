package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class q0 extends FrameLayout implements SubtitleView.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.ui.b f27208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WebView f27209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f27210c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f27211d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f27212e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f27213f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f27214g;

    class a extends WebView {
        a(q0 q0Var, Context context, AttributeSet attributeSet) {
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
        static final /* synthetic */ int[] f27215a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f27215a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27215a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27215a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public q0(Context context) {
        this(context, null);
    }

    public q0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27210c = Collections.emptyList();
        this.f27211d = c.f27110g;
        this.f27212e = 0.0533f;
        this.f27213f = 0;
        this.f27214g = 0.08f;
        com.google.android.exoplayer2.ui.b bVar = new com.google.android.exoplayer2.ui.b(context, attributeSet);
        this.f27208a = bVar;
        a aVar = new a(this, context, attributeSet);
        this.f27209b = aVar;
        aVar.setBackgroundColor(0);
        addView(bVar);
        addView(aVar);
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
        int i11 = b.f27215a[alignment.ordinal()];
        if (i11 != 1) {
            return i11 != 2 ? TtmlNode.CENTER : TtmlNode.END;
        }
        return "start";
    }

    private static String d(c cVar) {
        int i11 = cVar.f27114d;
        if (i11 == 1) {
            return com.google.android.exoplayer2.util.p0.C("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", h.b(cVar.f27115e));
        }
        if (i11 == 2) {
            return com.google.android.exoplayer2.util.p0.C("0.1em 0.12em 0.15em %s", h.b(cVar.f27115e));
        }
        if (i11 != 3) {
            return i11 != 4 ? "unset" : com.google.android.exoplayer2.util.p0.C("-0.05em -0.05em 0.15em %s", h.b(cVar.f27115e));
        }
        return com.google.android.exoplayer2.util.p0.C("0.06em 0.08em 0.15em %s", h.b(cVar.f27115e));
    }

    private String e(int i11, float f11) {
        float fH = m0.h(i11, f11, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return fH == -3.4028235E38f ? "unset" : com.google.android.exoplayer2.util.p0.C("%.2fpx", Float.valueOf(fH / getContext().getResources().getDisplayMetrics().density));
    }

    private static String f(int i11) {
        if (i11 != 1) {
            return i11 != 2 ? "horizontal-tb" : "vertical-lr";
        }
        return "vertical-rl";
    }

    private static String h(ba.b bVar) {
        float f11 = bVar.f16267q;
        if (f11 == 0.0f) {
            return "";
        }
        int i11 = bVar.f16266p;
        return com.google.android.exoplayer2.util.p0.C("%s(%.2fdeg)", (i11 == 2 || i11 == 1) ? "skewY" : "skewX", Float.valueOf(f11));
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
        String strC;
        int iB;
        int i11;
        float f11;
        String strC2;
        int i12;
        int i13;
        int i14;
        String str;
        String str2;
        String str3;
        int i15;
        String str4;
        int i16;
        k.b bVarA;
        Iterator it;
        k.b bVar;
        Layout.Alignment alignment;
        String str5;
        boolean z10;
        q0 q0Var = this;
        StringBuilder sb2 = new StringBuilder();
        float f12 = 1.2f;
        int i17 = 0;
        int i18 = 1;
        sb2.append(com.google.android.exoplayer2.util.p0.C("<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", h.b(q0Var.f27211d.f27111a), q0Var.e(q0Var.f27213f, q0Var.f27212e), Float.valueOf(1.2f), d(q0Var.f27211d)));
        HashMap map = new HashMap();
        map.put(h.a("default_bg"), com.google.android.exoplayer2.util.p0.C("background-color:%s;", h.b(q0Var.f27211d.f27112b)));
        int i19 = 0;
        while (i19 < q0Var.f27210c.size()) {
            ba.b bVar2 = (ba.b) q0Var.f27210c.get(i19);
            float f13 = bVar2.f16258h;
            float f14 = f13 != -3.4028235E38f ? f13 * 100.0f : 50.0f;
            int iB2 = b(bVar2.f16259i);
            float f15 = bVar2.f16255e;
            if (f15 != -3.4028235E38f) {
                if (bVar2.f16256f != i18) {
                    Float fValueOf = Float.valueOf(f15 * 100.0f);
                    Object[] objArr = new Object[i18];
                    objArr[i17] = fValueOf;
                    strC = com.google.android.exoplayer2.util.p0.C("%.2f%%", objArr);
                    iB = bVar2.f16266p == i18 ? -b(bVar2.f16257g) : b(bVar2.f16257g);
                } else if (f15 >= 0.0f) {
                    Float fValueOf2 = Float.valueOf(f15 * f12);
                    Object[] objArr2 = new Object[i18];
                    objArr2[i17] = fValueOf2;
                    strC = com.google.android.exoplayer2.util.p0.C("%.2fem", objArr2);
                    iB = i17;
                    i11 = iB;
                } else {
                    Float fValueOf3 = Float.valueOf(((-f15) - 1.0f) * f12);
                    Object[] objArr3 = new Object[i18];
                    objArr3[i17] = fValueOf3;
                    strC = com.google.android.exoplayer2.util.p0.C("%.2fem", objArr3);
                    i11 = i18;
                    iB = i17;
                }
                f11 = bVar2.f16260j;
                if (f11 != -3.4028235E38f) {
                    Object[] objArr4 = new Object[i18];
                    objArr4[i17] = Float.valueOf(f11 * 100.0f);
                    strC2 = com.google.android.exoplayer2.util.p0.C("%.2f%%", objArr4);
                } else {
                    strC2 = "fit-content";
                }
                String strC3 = c(bVar2.f16252b);
                String strF = f(bVar2.f16266p);
                String strE = q0Var.e(bVar2.f16264n, bVar2.f16265o);
                if (bVar2.f16262l) {
                    i12 = bVar2.f16263m;
                } else {
                    i12 = q0Var.f27211d.f27113c;
                }
                String strB = h.b(i12);
                i13 = iB;
                i14 = bVar2.f16266p;
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
                bVarA = k.a(bVar2.f16251a, getContext().getResources().getDisplayMetrics().density);
                it = map.keySet().iterator();
                while (it.hasNext()) {
                    Iterator it2 = it;
                    String str6 = (String) it.next();
                    k.b bVar3 = bVarA;
                    str5 = (String) map.put(str6, (String) map.get(str6));
                    if (str5 != null || str5.equals(map.get(str6))) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    com.google.android.exoplayer2.util.a.g(z10);
                    it = it2;
                    bVarA = bVar3;
                }
                bVar = bVarA;
                HashMap map2 = map;
                sb2.append(com.google.android.exoplayer2.util.p0.C("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i19), str3, Float.valueOf(f14), str2, strC, str4, strC2, strC3, strF, strE, strB, Integer.valueOf(i16), Integer.valueOf(i13), h(bVar2)));
                sb2.append(com.google.android.exoplayer2.util.p0.C("<span class='%s'>", "default_bg"));
                alignment = bVar2.f16253c;
                if (alignment != null) {
                    sb2.append(com.google.android.exoplayer2.util.p0.C("<span style='display:inline-block; text-align:%s;'>", c(alignment)));
                    sb2.append(bVar.f27193a);
                    sb2.append("</span>");
                } else {
                    sb2.append(bVar.f27193a);
                }
                sb2.append("</span>");
                sb2.append("</div>");
                i18 = 1;
                i19++;
                f12 = 1.2f;
                i17 = 0;
                map = map2;
                q0Var = this;
            } else {
                Object[] objArr5 = new Object[i18];
                objArr5[i17] = Float.valueOf((1.0f - q0Var.f27214g) * 100.0f);
                strC = com.google.android.exoplayer2.util.p0.C("%.2f%%", objArr5);
                iB = -100;
            }
            i11 = i17;
            f11 = bVar2.f16260j;
            if (f11 != -3.4028235E38f) {
                Object[] objArr6 = new Object[i18];
                objArr6[i17] = Float.valueOf(f11 * 100.0f);
                strC2 = com.google.android.exoplayer2.util.p0.C("%.2f%%", objArr6);
            } else {
                strC2 = "fit-content";
            }
            String strC4 = c(bVar2.f16252b);
            String strF2 = f(bVar2.f16266p);
            String strE2 = q0Var.e(bVar2.f16264n, bVar2.f16265o);
            if (bVar2.f16262l) {
                i12 = bVar2.f16263m;
            } else {
                i12 = q0Var.f27211d.f27113c;
            }
            String strB2 = h.b(i12);
            i13 = iB;
            i14 = bVar2.f16266p;
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
            bVarA = k.a(bVar2.f16251a, getContext().getResources().getDisplayMetrics().density);
            it = map.keySet().iterator();
            while (it.hasNext()) {
                Iterator it3 = it;
                String str7 = (String) it.next();
                k.b bVar4 = bVarA;
                str5 = (String) map.put(str7, (String) map.get(str7));
                if (str5 != null) {
                    z10 = true;
                } else {
                    z10 = true;
                }
                com.google.android.exoplayer2.util.a.g(z10);
                it = it3;
                bVarA = bVar4;
            }
            bVar = bVarA;
            HashMap map3 = map;
            sb2.append(com.google.android.exoplayer2.util.p0.C("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", Integer.valueOf(i19), str3, Float.valueOf(f14), str2, strC, str4, strC2, strC4, strF2, strE2, strB2, Integer.valueOf(i16), Integer.valueOf(i13), h(bVar2)));
            sb2.append(com.google.android.exoplayer2.util.p0.C("<span class='%s'>", "default_bg"));
            alignment = bVar2.f16253c;
            if (alignment != null) {
                sb2.append(com.google.android.exoplayer2.util.p0.C("<span style='display:inline-block; text-align:%s;'>", c(alignment)));
                sb2.append(bVar.f27193a);
                sb2.append("</span>");
            } else {
                sb2.append(bVar.f27193a);
            }
            sb2.append("</span>");
            sb2.append("</div>");
            i18 = 1;
            i19++;
            f12 = 1.2f;
            i17 = 0;
            map = map3;
            q0Var = this;
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
        this.f27209b.loadData(Base64.encodeToString(sb2.toString().getBytes(com.google.common.base.c.f30228c), 1), "text/html", "base64");
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public void a(List list, c cVar, float f11, int i11, float f12) {
        this.f27211d = cVar;
        this.f27212e = f11;
        this.f27213f = i11;
        this.f27214g = f12;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i12 = 0; i12 < list.size(); i12++) {
            ba.b bVar = (ba.b) list.get(i12);
            if (bVar.f16254d != null) {
                arrayList.add(bVar);
            } else {
                arrayList2.add(bVar);
            }
        }
        if (!this.f27210c.isEmpty() || !arrayList2.isEmpty()) {
            this.f27210c = arrayList2;
            i();
        }
        this.f27208a.a(arrayList, cVar, f11, i11, f12);
        invalidate();
    }

    public void g() {
        this.f27209b.destroy();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        if (!z10 || this.f27210c.isEmpty()) {
            return;
        }
        i();
    }
}
