package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static HashMap f7294b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap f7295a = new HashMap();

    static {
        HashMap map = new HashMap();
        f7294b = map;
        try {
            map.put("KeyAttribute", e.class.getConstructor(null));
            f7294b.put("KeyPosition", h.class.getConstructor(null));
            f7294b.put("KeyCycle", f.class.getConstructor(null));
            f7294b.put("KeyTimeCycle", j.class.getConstructor(null));
            f7294b.put("KeyTrigger", k.class.getConstructor(null));
        } catch (NoSuchMethodException e11) {
            Log.e("KeyFrames", "unable to load", e11);
        }
    }

    public g() {
    }

    public g(Context context, XmlPullParser xmlPullParser) {
        Exception e11;
        d dVar;
        HashMap map;
        HashMap map2;
        try {
            int eventType = xmlPullParser.getEventType();
            d dVar2 = null;
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (f7294b.containsKey(name)) {
                        try {
                            Constructor constructor = (Constructor) f7294b.get(name);
                            if (constructor == null) {
                                throw new NullPointerException("Keymaker for " + name + " not found");
                            }
                            dVar = (d) constructor.newInstance(null);
                            try {
                                dVar.e(context, Xml.asAttributeSet(xmlPullParser));
                                c(dVar);
                            } catch (Exception e12) {
                                e11 = e12;
                                Log.e("KeyFrames", "unable to create ", e11);
                            }
                            dVar2 = dVar;
                        } catch (Exception e13) {
                            d dVar3 = dVar2;
                            e11 = e13;
                            dVar = dVar3;
                        }
                        Log.e("KeyFrames", "unable to create ", e11);
                        dVar2 = dVar;
                    } else if (name.equalsIgnoreCase("CustomAttribute")) {
                        if (dVar2 != null && (map2 = dVar2.f7254e) != null) {
                            ConstraintAttribute.i(context, xmlPullParser, map2);
                        }
                    } else if (name.equalsIgnoreCase("CustomMethod") && dVar2 != null && (map = dVar2.f7254e) != null) {
                        ConstraintAttribute.i(context, xmlPullParser, map);
                    }
                } else if (eventType == 3 && "KeyFrameSet".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e14) {
            e14.printStackTrace();
        } catch (XmlPullParserException e15) {
            e15.printStackTrace();
        }
    }

    public void a(m mVar) {
        ArrayList arrayList = (ArrayList) this.f7295a.get(-1);
        if (arrayList != null) {
            mVar.b(arrayList);
        }
    }

    public void b(m mVar) {
        ArrayList arrayList = (ArrayList) this.f7295a.get(Integer.valueOf(mVar.f7378c));
        if (arrayList != null) {
            mVar.b(arrayList);
        }
        ArrayList<d> arrayList2 = (ArrayList) this.f7295a.get(-1);
        if (arrayList2 != null) {
            for (d dVar : arrayList2) {
                if (dVar.f(((ConstraintLayout.b) mVar.f7377b.getLayoutParams()).f7667c0)) {
                    mVar.a(dVar);
                }
            }
        }
    }

    public void c(d dVar) {
        if (!this.f7295a.containsKey(Integer.valueOf(dVar.f7251b))) {
            this.f7295a.put(Integer.valueOf(dVar.f7251b), new ArrayList());
        }
        ArrayList arrayList = (ArrayList) this.f7295a.get(Integer.valueOf(dVar.f7251b));
        if (arrayList != null) {
            arrayList.add(dVar);
        }
    }

    public ArrayList d(int i11) {
        return (ArrayList) this.f7295a.get(Integer.valueOf(i11));
    }
}
