package com.google.firebase.encoders.proto;

import bc.d;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.proto.e;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f31832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f31833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final bc.c f31834c;

    public static final class a implements cc.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final bc.c f31835d = new bc.c() { // from class: ec.b
            @Override // bc.c
            public final void a(Object obj, Object obj2) {
                e.a.e(obj, (d) obj2);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map f31836a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map f31837b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private bc.c f31838c = f31835d;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void e(Object obj, bc.d dVar) {
            throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }

        public e c() {
            return new e(new HashMap(this.f31836a), new HashMap(this.f31837b), this.f31838c);
        }

        public a d(cc.a aVar) {
            aVar.a(this);
            return this;
        }

        @Override // cc.b
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public a a(Class cls, bc.c cVar) {
            this.f31836a.put(cls, cVar);
            this.f31837b.remove(cls);
            return this;
        }
    }

    e(Map map, Map map2, bc.c cVar) {
        this.f31832a = map;
        this.f31833b = map2;
        this.f31834c = cVar;
    }

    public static a a() {
        return new a();
    }

    public void b(Object obj, OutputStream outputStream) {
        new d(outputStream, this.f31832a, this.f31833b, this.f31834c).t(obj);
    }

    public byte[] c(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            b(obj, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
