package com.bykv.vk.openvk.preload.b;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j<IN, OUT> extends l<IN, OUT> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f20560d;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.b.d
    public final Object a(b<OUT> bVar, IN in2) throws Throwable {
        new m(bVar);
        this.f20560d = a(in2);
        l.a aVar = a().get(this.f20560d);
        while (aVar != null) {
            List<h> list = aVar.f20563a;
            try {
                Object objA = c.a(list, bVar.f20556a, this).a(in2);
                return !l.a(list) ? objA : bVar.a(objA);
            } catch (i.a e11) {
                Throwable cause = e11.getCause();
                new m(bVar);
                this.f20560d = a(in2, cause, this.f20560d);
                aVar = a().get(this.f20560d);
            } catch (Throwable th2) {
                new m(bVar);
                this.f20560d = a(in2, th2, this.f20560d);
                aVar = a().get(this.f20560d);
            }
        }
        throw new IllegalArgumentException("can not found branch，branch name is：" + this.f20560d);
    }

    protected abstract String a(IN in2);

    protected abstract String a(IN in2, Throwable th2, String str);
}
