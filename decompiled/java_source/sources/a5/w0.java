package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Currency;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.regex.Pattern;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Node;
import z4.b2;

/* JADX INFO: loaded from: classes2.dex */
public class w0 implements z0, b2 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f357c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final w0 f356b = new w0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f358d = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f355a = "true".equals(com.alibaba.fastjson.util.f.j("fastjson.deserializer.fileRelativePathSupport"));

    private static String e(Node node) {
        try {
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            DOMSource dOMSource = new DOMSource(node);
            StringWriter stringWriter = new StringWriter();
            transformerNewTransformer.transform(dOMSource, new StreamResult(stringWriter));
            return stringWriter.toString();
        } catch (TransformerException e11) {
            throw new JSONException("xml node to string error", e11);
        }
    }

    @Override // z4.b2
    public int b() {
        return 4;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        Object objT;
        String str;
        y4.b bVar = aVar.f78831f;
        int i11 = 0;
        InetAddress inetAddress = null;
        if (type != InetSocketAddress.class) {
            if (aVar.f78836k == 2) {
                aVar.f78836k = 0;
                aVar.b(16);
                if (bVar.q0() != 4) {
                    throw new JSONException("syntax error");
                }
                if (!"val".equals(bVar.k0())) {
                    throw new JSONException("syntax error");
                }
                bVar.Z();
                aVar.b(17);
                objT = aVar.T();
                aVar.b(13);
            } else {
                objT = aVar.T();
            }
            if (objT == null) {
                str = null;
            } else {
                if (!(objT instanceof String)) {
                    if (!(objT instanceof JSONObject)) {
                        throw new JSONException("expect string");
                    }
                    JSONObject jSONObject = (JSONObject) objT;
                    if (type == Currency.class) {
                        String string = jSONObject.getString("currency");
                        if (string != null) {
                            return Currency.getInstance(string);
                        }
                        String string2 = jSONObject.getString("currencyCode");
                        if (string2 != null) {
                            return Currency.getInstance(string2);
                        }
                    }
                    return type == Map.Entry.class ? jSONObject.entrySet().iterator().next() : jSONObject.toJavaObject(type);
                }
                str = (String) objT;
            }
            if (str == null || str.length() == 0) {
                return null;
            }
            if (type == UUID.class) {
                return UUID.fromString(str);
            }
            if (type == URI.class) {
                return URI.create(str);
            }
            if (type == URL.class) {
                try {
                    return new URL(str);
                } catch (MalformedURLException e11) {
                    throw new JSONException("create url error", e11);
                }
            }
            if (type == Pattern.class) {
                return Pattern.compile(str);
            }
            if (type == Locale.class) {
                return TypeUtils.O0(str);
            }
            if (type == SimpleDateFormat.class) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, bVar.B0());
                simpleDateFormat.setTimeZone(bVar.l0());
                return simpleDateFormat;
            }
            if (type == InetAddress.class || type == Inet4Address.class || type == Inet6Address.class) {
                try {
                    return InetAddress.getByName(str);
                } catch (UnknownHostException e12) {
                    throw new JSONException("deserialize inet adress error", e12);
                }
            }
            if (type == File.class) {
                if (str.indexOf("..") < 0 || f355a) {
                    return new File(str);
                }
                throw new JSONException("file relative path not support.");
            }
            if (type == TimeZone.class) {
                return TimeZone.getTimeZone(str);
            }
            if (type instanceof ParameterizedType) {
                type = ((ParameterizedType) type).getRawType();
            }
            if (type == Class.class) {
                return TypeUtils.C0(str, aVar.m().n(), false);
            }
            if (type == Charset.class) {
                return Charset.forName(str);
            }
            if (type == Currency.class) {
                return Currency.getInstance(str);
            }
            if (type == JSONPath.class) {
                return new JSONPath(str);
            }
            if (!(type instanceof Class)) {
                throw new JSONException("MiscCodec not support " + type.toString());
            }
            String name = ((Class) type).getName();
            if (name.equals("java.nio.file.Path")) {
                try {
                    if (f357c == null && !f358d) {
                        f357c = TypeUtils.A0("java.nio.file.Paths").getMethod("get", String.class, String[].class);
                    }
                    Method method = f357c;
                    if (method != null) {
                        return method.invoke(null, str, new String[0]);
                    }
                    throw new JSONException("Path deserialize erorr");
                } catch (IllegalAccessException e13) {
                    throw new JSONException("Path deserialize erorr", e13);
                } catch (NoSuchMethodException unused) {
                    f358d = true;
                } catch (InvocationTargetException e14) {
                    throw new JSONException("Path deserialize erorr", e14);
                }
            }
            throw new JSONException("MiscCodec not support " + name);
        }
        if (bVar.q0() == 8) {
            bVar.Z();
            return null;
        }
        aVar.b(12);
        while (true) {
            String strK0 = bVar.k0();
            bVar.c0(17);
            if (strK0.equals(PlaceTypes.ADDRESS)) {
                aVar.b(17);
                inetAddress = (InetAddress) aVar.m0(InetAddress.class);
            } else if (strK0.equals("port")) {
                aVar.b(17);
                if (bVar.q0() != 2) {
                    throw new JSONException("port is not int");
                }
                int iO = bVar.o();
                bVar.Z();
                i11 = iO;
            } else {
                aVar.b(17);
                aVar.T();
            }
            if (bVar.q0() != 16) {
                aVar.b(13);
                return new InetSocketAddress(inetAddress, i11);
            }
            bVar.Z();
        }
    }

    @Override // a5.z0
    public void d(o0 o0Var, Object obj, Object obj2, Type type, int i11) {
        String strE;
        j1 j1Var = o0Var.f296k;
        if (obj == null) {
            j1Var.m0();
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls == SimpleDateFormat.class) {
            strE = ((SimpleDateFormat) obj).toPattern();
            if (j1Var.q(SerializerFeature.WriteClassName) && obj.getClass() != type) {
                j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
                j1Var.w(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
                o0Var.B(obj.getClass().getName());
                j1Var.Z(',', "val", strE);
                j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
                return;
            }
        } else if (cls == Class.class) {
            strE = ((Class) obj).getName();
        } else {
            if (cls == InetSocketAddress.class) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) obj;
                InetAddress address = inetSocketAddress.getAddress();
                j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
                if (address != null) {
                    j1Var.w(PlaceTypes.ADDRESS);
                    o0Var.A(address);
                    j1Var.write(44);
                }
                j1Var.w("port");
                j1Var.h0(inetSocketAddress.getPort());
                j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
                return;
            }
            if (obj instanceof File) {
                strE = ((File) obj).getPath();
            } else if (obj instanceof InetAddress) {
                strE = ((InetAddress) obj).getHostAddress();
            } else if (obj instanceof TimeZone) {
                strE = ((TimeZone) obj).getID();
            } else if (obj instanceof Currency) {
                strE = ((Currency) obj).getCurrencyCode();
            } else {
                if (obj instanceof com.alibaba.fastjson.e) {
                    ((com.alibaba.fastjson.e) obj).writeJSONString(j1Var);
                    return;
                }
                if (obj instanceof Iterator) {
                    f(o0Var, j1Var, (Iterator) obj);
                    return;
                }
                if (obj instanceof Iterable) {
                    f(o0Var, j1Var, ((Iterable) obj).iterator());
                    return;
                }
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    if (key instanceof String) {
                        String str = (String) key;
                        if (value instanceof String) {
                            j1Var.c0('{', str, (String) value);
                        } else {
                            j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
                            j1Var.w(str);
                            o0Var.A(value);
                        }
                    } else {
                        j1Var.write(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
                        o0Var.A(key);
                        j1Var.write(58);
                        o0Var.A(value);
                    }
                    j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
                    return;
                }
                if (obj.getClass().getName().equals("net.sf.json.JSONNull")) {
                    j1Var.m0();
                    return;
                } else {
                    if (!(obj instanceof Node)) {
                        throw new JSONException("not support class : " + cls);
                    }
                    strE = e((Node) obj);
                }
            }
        }
        j1Var.q0(strE);
    }

    protected void f(o0 o0Var, j1 j1Var, Iterator it) {
        j1Var.write(91);
        int i11 = 0;
        while (it.hasNext()) {
            if (i11 != 0) {
                j1Var.write(44);
            }
            o0Var.A(it.next());
            i11++;
        }
        j1Var.write(93);
    }
}
