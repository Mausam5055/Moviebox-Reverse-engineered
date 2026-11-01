package z4;

import com.alibaba.fastjson.JSONException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class f extends l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected b2 f79224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f79225d;

    public f(y4.h hVar, Class cls, com.alibaba.fastjson.util.d dVar) {
        super(cls, dVar);
        boolean z10 = false;
        this.f79225d = false;
        x4.b bVarE = dVar.e();
        if (bVarE != null) {
            Class clsDeserializeUsing = bVarE.deserializeUsing();
            if (clsDeserializeUsing != null && clsDeserializeUsing != Void.class) {
                z10 = true;
            }
            this.f79225d = z10;
        }
    }

    @Override // z4.l
    public int b() {
        b2 b2Var = this.f79224c;
        if (b2Var != null) {
            return b2Var.b();
        }
        return 2;
    }

    @Override // z4.l
    public void d(y4.a aVar, Object obj, Type type, Map map) {
        Object objE;
        com.alibaba.fastjson.util.d dVar;
        int i11;
        if (this.f79224c == null) {
            k(aVar.m());
        }
        b2 b2VarP = this.f79224c;
        Type typeI = this.f79243a.f18202f;
        if (type instanceof ParameterizedType) {
            y4.g gVarN = aVar.n();
            if (gVarN != null) {
                gVarN.f78870e = type;
            }
            if (typeI != type) {
                typeI = com.alibaba.fastjson.util.d.i(this.f79244b, type, typeI);
                if (b2VarP instanceof p) {
                    b2VarP = aVar.m().p(typeI);
                }
            }
        }
        Type type2 = typeI;
        if (!(b2VarP instanceof o) || (i11 = (dVar = this.f79243a).f18206j) == 0) {
            com.alibaba.fastjson.util.d dVar2 = this.f79243a;
            String str = dVar2.f18216t;
            objE = (!(str == null && dVar2.f18206j == 0) && (b2VarP instanceof e)) ? ((e) b2VarP).e(aVar, type2, dVar2.f18197a, str, dVar2.f18206j) : b2VarP.c(aVar, type2, dVar2.f18197a);
        } else {
            objE = ((o) b2VarP).g(aVar, type2, dVar.f18197a, i11);
        }
        if ((objE instanceof byte[]) && ("gzip".equals(this.f79243a.f18216t) || "gzip,base64".equals(this.f79243a.f18216t))) {
            try {
                GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream((byte[]) objE));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    byte[] bArr = new byte[1024];
                    int i12 = gZIPInputStream.read(bArr);
                    if (i12 == -1) {
                        break;
                    } else if (i12 > 0) {
                        byteArrayOutputStream.write(bArr, 0, i12);
                    }
                }
                objE = byteArrayOutputStream.toByteArray();
            } catch (IOException e11) {
                throw new JSONException("unzip bytes error.", e11);
            }
        }
        if (aVar.u() == 1) {
            y4.a.C0966a c0966aR = aVar.r();
            c0966aR.f78843c = this;
            c0966aR.f78844d = aVar.n();
            aVar.E0(0);
            return;
        }
        if (obj == null) {
            map.put(this.f79243a.f18197a, objE);
        } else {
            h(obj, objE);
        }
    }

    public b2 k(y4.h hVar) {
        if (this.f79224c == null) {
            x4.b bVarE = this.f79243a.e();
            if (bVarE == null || bVarE.deserializeUsing() == Void.class) {
                com.alibaba.fastjson.util.d dVar = this.f79243a;
                this.f79224c = hVar.o(dVar.f18201e, dVar.f18202f);
            } else {
                try {
                    this.f79224c = (b2) bVarE.deserializeUsing().newInstance();
                } catch (Exception e11) {
                    throw new JSONException("create deserializeUsing ObjectDeserializer error", e11);
                }
            }
        }
        return this.f79224c;
    }
}
