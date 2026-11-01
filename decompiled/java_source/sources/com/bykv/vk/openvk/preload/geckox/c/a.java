package com.bykv.vk.openvk.preload.geckox.c;

import com.bykv.vk.openvk.preload.a.d.c;
import com.bykv.vk.openvk.preload.a.m;
import com.bykv.vk.openvk.preload.a.r;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends r<Boolean> {

    /* JADX INFO: renamed from: com.bykv.vk.openvk.preload.geckox.c.a$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f20657a;

        static {
            int[] iArr = new int[com.bykv.vk.openvk.preload.a.d.b.values().length];
            f20657a = iArr;
            try {
                iArr[com.bykv.vk.openvk.preload.a.d.b.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20657a[com.bykv.vk.openvk.preload.a.d.b.NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20657a[com.bykv.vk.openvk.preload.a.d.b.NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final /* synthetic */ Boolean a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
        int i11 = AnonymousClass1.f20657a[bVarF.ordinal()];
        if (i11 == 1) {
            return Boolean.valueOf(aVar.i());
        }
        if (i11 == 2) {
            aVar.j();
            return null;
        }
        if (i11 == 3) {
            return Boolean.valueOf(aVar.m() != 0);
        }
        throw new m("Expected BOOLEAN or NUMBER but was ".concat(String.valueOf(bVarF)));
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final /* synthetic */ void a(c cVar, Boolean bool) throws IOException {
        Boolean bool2 = bool;
        if (bool2 == null) {
            cVar.h();
        } else {
            cVar.a(bool2);
        }
    }
}
