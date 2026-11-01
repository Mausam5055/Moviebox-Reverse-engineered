package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstraintLayout f7736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    androidx.constraintlayout.widget.b f7737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f7738c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f7739d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SparseArray f7740e = new SparseArray();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SparseArray f7741f = new SparseArray();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f7742g = null;

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.a$a, reason: collision with other inner class name */
    static class C0062a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f7743a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayList f7744b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f7745c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        androidx.constraintlayout.widget.b f7746d;

        public C0062a(Context context, XmlPullParser xmlPullParser) {
            this.f7745c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.State_android_id) {
                    this.f7743a = typedArrayObtainStyledAttributes.getResourceId(index, this.f7743a);
                } else if (index == R$styleable.State_constraints) {
                    this.f7745c = typedArrayObtainStyledAttributes.getResourceId(index, this.f7745c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f7745c);
                    context.getResources().getResourceName(this.f7745c);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
                        this.f7746d = bVar;
                        bVar.p(context, this.f7745c);
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(b bVar) {
            this.f7744b.add(bVar);
        }

        public int b(float f11, float f12) {
            for (int i11 = 0; i11 < this.f7744b.size(); i11++) {
                if (((b) this.f7744b.get(i11)).a(f11, f12)) {
                    return i11;
                }
            }
            return -1;
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f7747a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f7748b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f7749c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f7750d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f7751e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        androidx.constraintlayout.widget.b f7752f;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.f7747a = Float.NaN;
            this.f7748b = Float.NaN;
            this.f7749c = Float.NaN;
            this.f7750d = Float.NaN;
            this.f7751e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.Variant_constraints) {
                    this.f7751e = typedArrayObtainStyledAttributes.getResourceId(index, this.f7751e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f7751e);
                    context.getResources().getResourceName(this.f7751e);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
                        this.f7752f = bVar;
                        bVar.p(context, this.f7751e);
                    }
                } else if (index == R$styleable.Variant_region_heightLessThan) {
                    this.f7750d = typedArrayObtainStyledAttributes.getDimension(index, this.f7750d);
                } else if (index == R$styleable.Variant_region_heightMoreThan) {
                    this.f7748b = typedArrayObtainStyledAttributes.getDimension(index, this.f7748b);
                } else if (index == R$styleable.Variant_region_widthLessThan) {
                    this.f7749c = typedArrayObtainStyledAttributes.getDimension(index, this.f7749c);
                } else if (index == R$styleable.Variant_region_widthMoreThan) {
                    this.f7747a = typedArrayObtainStyledAttributes.getDimension(index, this.f7747a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        boolean a(float f11, float f12) {
            if (!Float.isNaN(this.f7747a) && f11 < this.f7747a) {
                return false;
            }
            if (!Float.isNaN(this.f7748b) && f12 < this.f7748b) {
                return false;
            }
            if (Float.isNaN(this.f7749c) || f11 <= this.f7749c) {
                return Float.isNaN(this.f7750d) || f12 <= this.f7750d;
            }
            return false;
        }
    }

    a(Context context, ConstraintLayout constraintLayout, int i11) {
        this.f7736a = constraintLayout;
        a(context, i11);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x005a  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void a(Context context, int i11) {
        XmlResourceParser xml = context.getResources().getXml(i11);
        try {
            int eventType = xml.getEventType();
            C0062a c0062a = null;
            while (true) {
                byte b11 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (!name.equals("ConstraintSet")) {
                                b11 = -1;
                            } else {
                                b11 = 4;
                            }
                            break;
                        case 80204913:
                            if (!name.equals("State")) {
                                b11 = -1;
                            } else {
                                b11 = 2;
                            }
                            break;
                        case 1382829617:
                            if (!name.equals("StateSet")) {
                                b11 = -1;
                            }
                            break;
                        case 1657696882:
                            if (!name.equals("layoutDescription")) {
                                b11 = -1;
                            } else {
                                b11 = 0;
                            }
                            break;
                        case 1901439077:
                            if (!name.equals("Variant")) {
                                b11 = -1;
                            } else {
                                b11 = 3;
                            }
                            break;
                        default:
                            b11 = -1;
                            break;
                    }
                    if (b11 == 2) {
                        c0062a = new C0062a(context, xml);
                        this.f7740e.put(c0062a.f7743a, c0062a);
                    } else if (b11 == 3) {
                        b bVar = new b(context, xml);
                        if (c0062a != null) {
                            c0062a.a(bVar);
                        }
                    } else if (b11 == 4) {
                        b(context, xml);
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        } catch (XmlPullParserException e12) {
            e12.printStackTrace();
        }
    }

    private void b(Context context, XmlPullParser xmlPullParser) {
        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i11 = 0; i11 < attributeCount; i11++) {
            String attributeName = xmlPullParser.getAttributeName(i11);
            String attributeValue = xmlPullParser.getAttributeValue(i11);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                bVar.I(context, xmlPullParser);
                this.f7741f.put(identifier, bVar);
                return;
            }
        }
    }

    public void c(c cVar) {
        this.f7742g = cVar;
    }

    public void d(int i11, float f11, float f12) {
        int iB;
        int i12 = this.f7738c;
        if (i12 == i11) {
            C0062a c0062a = i11 == -1 ? (C0062a) this.f7740e.valueAt(0) : (C0062a) this.f7740e.get(i12);
            int i13 = this.f7739d;
            if ((i13 == -1 || !((b) c0062a.f7744b.get(i13)).a(f11, f12)) && this.f7739d != (iB = c0062a.b(f11, f12))) {
                androidx.constraintlayout.widget.b bVar = iB == -1 ? this.f7737b : ((b) c0062a.f7744b.get(iB)).f7752f;
                int i14 = iB == -1 ? c0062a.f7745c : ((b) c0062a.f7744b.get(iB)).f7751e;
                if (bVar == null) {
                    return;
                }
                this.f7739d = iB;
                c cVar = this.f7742g;
                if (cVar != null) {
                    cVar.b(-1, i14);
                }
                bVar.i(this.f7736a);
                c cVar2 = this.f7742g;
                if (cVar2 != null) {
                    cVar2.a(-1, i14);
                    return;
                }
                return;
            }
            return;
        }
        this.f7738c = i11;
        C0062a c0062a2 = (C0062a) this.f7740e.get(i11);
        int iB2 = c0062a2.b(f11, f12);
        androidx.constraintlayout.widget.b bVar2 = iB2 == -1 ? c0062a2.f7746d : ((b) c0062a2.f7744b.get(iB2)).f7752f;
        int i15 = iB2 == -1 ? c0062a2.f7745c : ((b) c0062a2.f7744b.get(iB2)).f7751e;
        if (bVar2 == null) {
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i11 + ", dim =" + f11 + ", " + f12);
            return;
        }
        this.f7739d = iB2;
        c cVar3 = this.f7742g;
        if (cVar3 != null) {
            cVar3.b(i11, i15);
        }
        bVar2.i(this.f7736a);
        c cVar4 = this.f7742g;
        if (cVar4 != null) {
            cVar4.a(i11, i15);
        }
    }
}
