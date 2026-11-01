package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.awt.Color;
import java.awt.Font;
import java.awt.Point;
import java.awt.Rectangle;
import java.lang.reflect.Type;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class o implements z0, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f294a = new o();

    private Object i(y4.a aVar, Object obj) {
        y4.b bVarS = aVar.s();
        bVarS.q(4);
        String strK0 = bVarS.k0();
        aVar.y0(aVar.n(), obj);
        aVar.i(new y4.a.C0966a(aVar.n(), strK0));
        aVar.v0();
        aVar.E0(1);
        bVarS.c0(13);
        aVar.b(13);
        return null;
    }

    public static boolean j(Class cls) {
        return cls == Point.class || cls == Rectangle.class || cls == Font.class || cls == Color.class;
    }

    @Override // z4.b2
    public int b() {
        return 12;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        Point pointF;
        y4.b bVar = aVar.f78831f;
        if (bVar.q0() == 8) {
            bVar.c0(16);
            return null;
        }
        if (bVar.q0() != 12 && bVar.q0() != 16) {
            throw new JSONException("syntax error");
        }
        bVar.Z();
        if (type == Point.class) {
            pointF = g(aVar, obj);
        } else if (type == Rectangle.class) {
            pointF = h(aVar);
        } else if (type == Color.class) {
            pointF = e(aVar);
        } else {
            if (type != Font.class) {
                throw new JSONException("not support awt class : " + type);
            }
            pointF = f(aVar);
        }
        y4.g gVarN = aVar.n();
        aVar.y0(pointF, obj);
        aVar.B0(gVarN);
        return pointF;
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.m0();
            return;
        }
        if (obj instanceof Point) {
            Point point = (Point) obj;
            j1Var.U(k(j1Var, Point.class, '{'), "x", point.x);
            j1Var.U(',', "y", point.y);
        } else if (obj instanceof Font) {
            Font font = (Font) obj;
            j1Var.Z(k(j1Var, Font.class, '{'), "name", font.getName());
            j1Var.U(',', TtmlNode.TAG_STYLE, font.getStyle());
            j1Var.U(',', "size", font.getSize());
        } else if (obj instanceof Rectangle) {
            Rectangle rectangle = (Rectangle) obj;
            j1Var.U(k(j1Var, Rectangle.class, '{'), "x", rectangle.x);
            j1Var.U(',', "y", rectangle.y);
            j1Var.U(',', "width", rectangle.width);
            j1Var.U(',', "height", rectangle.height);
        } else {
            if (!(obj instanceof Color)) {
                throw new JSONException("not support awt class : " + obj.getClass().getName());
            }
            Color color = (Color) obj;
            j1Var.U(k(j1Var, Color.class, '{'), CampaignEx.JSON_KEY_AD_R, color.getRed());
            j1Var.U(',', "g", color.getGreen());
            j1Var.U(',', DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, color.getBlue());
            if (color.getAlpha() > 0) {
                j1Var.U(',', "alpha", color.getAlpha());
            }
        }
        j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
    }

    protected Color e(y4.a aVar) {
        y4.b bVar = aVar.f78831f;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (bVar.q0() != 13) {
            if (bVar.q0() != 4) {
                throw new JSONException("syntax error");
            }
            String strK0 = bVar.k0();
            bVar.q(2);
            if (bVar.q0() != 2) {
                throw new JSONException("syntax error");
            }
            int iO = bVar.o();
            bVar.Z();
            if (strK0.equalsIgnoreCase(CampaignEx.JSON_KEY_AD_R)) {
                i11 = iO;
            } else if (strK0.equalsIgnoreCase("g")) {
                i12 = iO;
            } else if (strK0.equalsIgnoreCase(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                i13 = iO;
            } else {
                if (!strK0.equalsIgnoreCase("alpha")) {
                    throw new JSONException("syntax error, " + strK0);
                }
                i14 = iO;
            }
            if (bVar.q0() == 16) {
                bVar.c0(4);
            }
        }
        bVar.Z();
        return new Color(i11, i12, i13, i14);
    }

    protected Font f(y4.a aVar) {
        y4.b bVar = aVar.f78831f;
        int iO = 0;
        String strK0 = null;
        int iO2 = 0;
        while (bVar.q0() != 13) {
            if (bVar.q0() != 4) {
                throw new JSONException("syntax error");
            }
            String strK1 = bVar.k0();
            bVar.q(2);
            if (strK1.equalsIgnoreCase("name")) {
                if (bVar.q0() != 4) {
                    throw new JSONException("syntax error");
                }
                strK0 = bVar.k0();
                bVar.Z();
            } else if (strK1.equalsIgnoreCase(TtmlNode.TAG_STYLE)) {
                if (bVar.q0() != 2) {
                    throw new JSONException("syntax error");
                }
                iO = bVar.o();
                bVar.Z();
            } else {
                if (!strK1.equalsIgnoreCase("size")) {
                    throw new JSONException("syntax error, " + strK1);
                }
                if (bVar.q0() != 2) {
                    throw new JSONException("syntax error");
                }
                iO2 = bVar.o();
                bVar.Z();
            }
            if (bVar.q0() == 16) {
                bVar.c0(4);
            }
        }
        bVar.Z();
        return new Font(strK0, iO, iO2);
    }

    protected Point g(y4.a aVar, Object obj) {
        int iP0;
        y4.b bVar = aVar.f78831f;
        int i11 = 0;
        int i12 = 0;
        while (bVar.q0() != 13) {
            if (bVar.q0() != 4) {
                throw new JSONException("syntax error");
            }
            String strK0 = bVar.k0();
            if (com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.equals(strK0)) {
                aVar.d("java.awt.Point");
            } else {
                if ("$ref".equals(strK0)) {
                    return (Point) i(aVar, obj);
                }
                bVar.q(2);
                int iQ0 = bVar.q0();
                if (iQ0 == 2) {
                    iP0 = bVar.o();
                    bVar.Z();
                } else {
                    if (iQ0 != 3) {
                        throw new JSONException("syntax error : " + bVar.v());
                    }
                    iP0 = (int) bVar.p0();
                    bVar.Z();
                }
                if (strK0.equalsIgnoreCase("x")) {
                    i11 = iP0;
                } else {
                    if (!strK0.equalsIgnoreCase("y")) {
                        throw new JSONException("syntax error, " + strK0);
                    }
                    i12 = iP0;
                }
                if (bVar.q0() == 16) {
                    bVar.c0(4);
                }
            }
        }
        bVar.Z();
        return new Point(i11, i12);
    }

    protected Rectangle h(y4.a aVar) {
        int iP0;
        y4.b bVar = aVar.f78831f;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (bVar.q0() != 13) {
            if (bVar.q0() != 4) {
                throw new JSONException("syntax error");
            }
            String strK0 = bVar.k0();
            bVar.q(2);
            int iQ0 = bVar.q0();
            if (iQ0 == 2) {
                iP0 = bVar.o();
                bVar.Z();
            } else {
                if (iQ0 != 3) {
                    throw new JSONException("syntax error");
                }
                iP0 = (int) bVar.p0();
                bVar.Z();
            }
            if (strK0.equalsIgnoreCase("x")) {
                i11 = iP0;
            } else if (strK0.equalsIgnoreCase("y")) {
                i12 = iP0;
            } else if (strK0.equalsIgnoreCase("width")) {
                i13 = iP0;
            } else {
                if (!strK0.equalsIgnoreCase("height")) {
                    throw new JSONException("syntax error, " + strK0);
                }
                i14 = iP0;
            }
            if (bVar.q0() == 16) {
                bVar.c0(4);
            }
        }
        bVar.Z();
        return new Rectangle(i11, i12, i13, i14);
    }

    protected char k(j1 j1Var, Class cls, char c11) {
        if (!j1Var.q(SerializerFeature.WriteClassName)) {
            return c11;
        }
        j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        j1Var.w(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
        j1Var.q0(cls.getName());
        return ',';
    }
}
