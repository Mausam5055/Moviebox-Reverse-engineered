package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f7864a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f7865b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f7866c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SparseArray f7867d = new SparseArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SparseArray f7868e = new SparseArray();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f7869f = null;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f7870a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayList f7871b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f7872c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f7873d;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.f7872c = -1;
            this.f7873d = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.State_android_id) {
                    this.f7870a = typedArrayObtainStyledAttributes.getResourceId(index, this.f7870a);
                } else if (index == R$styleable.State_constraints) {
                    this.f7872c = typedArrayObtainStyledAttributes.getResourceId(index, this.f7872c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f7872c);
                    context.getResources().getResourceName(this.f7872c);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        this.f7873d = true;
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(b bVar) {
            this.f7871b.add(bVar);
        }

        public int b(float f11, float f12) {
            for (int i11 = 0; i11 < this.f7871b.size(); i11++) {
                if (((b) this.f7871b.get(i11)).a(f11, f12)) {
                    return i11;
                }
            }
            return -1;
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f7874a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f7875b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f7876c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f7877d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f7878e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f7879f;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.f7874a = Float.NaN;
            this.f7875b = Float.NaN;
            this.f7876c = Float.NaN;
            this.f7877d = Float.NaN;
            this.f7878e = -1;
            this.f7879f = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.Variant_constraints) {
                    this.f7878e = typedArrayObtainStyledAttributes.getResourceId(index, this.f7878e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f7878e);
                    context.getResources().getResourceName(this.f7878e);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        this.f7879f = true;
                    }
                } else if (index == R$styleable.Variant_region_heightLessThan) {
                    this.f7877d = typedArrayObtainStyledAttributes.getDimension(index, this.f7877d);
                } else if (index == R$styleable.Variant_region_heightMoreThan) {
                    this.f7875b = typedArrayObtainStyledAttributes.getDimension(index, this.f7875b);
                } else if (index == R$styleable.Variant_region_widthLessThan) {
                    this.f7876c = typedArrayObtainStyledAttributes.getDimension(index, this.f7876c);
                } else if (index == R$styleable.Variant_region_widthMoreThan) {
                    this.f7874a = typedArrayObtainStyledAttributes.getDimension(index, this.f7874a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        boolean a(float f11, float f12) {
            if (!Float.isNaN(this.f7874a) && f11 < this.f7874a) {
                return false;
            }
            if (!Float.isNaN(this.f7875b) && f12 < this.f7875b) {
                return false;
            }
            if (Float.isNaN(this.f7876c) || f11 <= this.f7876c) {
                return Float.isNaN(this.f7877d) || f12 <= this.f7877d;
            }
            return false;
        }
    }

    public e(Context context, XmlPullParser xmlPullParser) {
        b(context, xmlPullParser);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x007c  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void b(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.StateSet);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i11 = 0; i11 < indexCount; i11++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i11);
            if (index == R$styleable.StateSet_defaultState) {
                this.f7864a = typedArrayObtainStyledAttributes.getResourceId(index, this.f7864a);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        try {
            int eventType = xmlPullParser.getEventType();
            a aVar = null;
            while (true) {
                byte b11 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xmlPullParser.getName();
                } else if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                b11 = 2;
                            } else {
                                b11 = -1;
                            }
                            break;
                        case 1301459538:
                            if (name.equals("LayoutDescription")) {
                                b11 = 0;
                            } else {
                                b11 = -1;
                            }
                            break;
                        case 1382829617:
                            if (!name.equals("StateSet")) {
                                b11 = -1;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                b11 = 3;
                            } else {
                                b11 = -1;
                            }
                            break;
                        default:
                            b11 = -1;
                            break;
                    }
                    if (b11 == 2) {
                        aVar = new a(context, xmlPullParser);
                        this.f7867d.put(aVar.f7870a, aVar);
                    } else if (b11 == 3) {
                        b bVar = new b(context, xmlPullParser);
                        if (aVar != null) {
                            aVar.a(bVar);
                        }
                    }
                } else if (eventType == 3 && "StateSet".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        } catch (XmlPullParserException e12) {
            e12.printStackTrace();
        }
    }

    public int a(int i11, int i12, float f11, float f12) {
        a aVar = (a) this.f7867d.get(i12);
        if (aVar == null) {
            return i12;
        }
        if (f11 == -1.0f || f12 == -1.0f) {
            if (aVar.f7872c == i11) {
                return i11;
            }
            Iterator it = aVar.f7871b.iterator();
            while (it.hasNext()) {
                if (i11 == ((b) it.next()).f7878e) {
                    return i11;
                }
            }
            return aVar.f7872c;
        }
        b bVar = null;
        for (b bVar2 : aVar.f7871b) {
            if (bVar2.a(f11, f12)) {
                if (i11 == bVar2.f7878e) {
                    return i11;
                }
                bVar = bVar2;
            }
        }
        return bVar != null ? bVar.f7878e : aVar.f7872c;
    }

    public int c(int i11, int i12, int i13) {
        return d(-1, i11, i12, i13);
    }

    public int d(int i11, int i12, float f11, float f12) {
        int iB;
        if (i11 != i12) {
            a aVar = (a) this.f7867d.get(i12);
            if (aVar == null) {
                return -1;
            }
            int iB2 = aVar.b(f11, f12);
            return iB2 == -1 ? aVar.f7872c : ((b) aVar.f7871b.get(iB2)).f7878e;
        }
        a aVar2 = i12 == -1 ? (a) this.f7867d.valueAt(0) : (a) this.f7867d.get(this.f7865b);
        if (aVar2 == null) {
            return -1;
        }
        if ((this.f7866c == -1 || !((b) aVar2.f7871b.get(i11)).a(f11, f12)) && i11 != (iB = aVar2.b(f11, f12))) {
            return iB == -1 ? aVar2.f7872c : ((b) aVar2.f7871b.get(iB)).f7878e;
        }
        return i11;
    }
}
