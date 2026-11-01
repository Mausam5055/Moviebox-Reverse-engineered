package com.transsion.commercialization.gameres;

import android.content.Context;
import com.transsion.bean.GameInfoType;
import com.transsion.commercialization.gameres.aha.AHAGameResLoader;
import com.transsion.commercialization.gameres.ps.PSGameResLoader;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public interface a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0615a f43774a = C0615a.f43775a;

    /* JADX INFO: renamed from: com.transsion.commercialization.gameres.a$a, reason: collision with other inner class name */
    public static final class C0615a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ C0615a f43775a = new C0615a();

        /* JADX INFO: renamed from: com.transsion.commercialization.gameres.a$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0616a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f43776a;

            static {
                int[] iArr = new int[GameInfoType.values().length];
                try {
                    iArr[GameInfoType.AHA.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[GameInfoType.PS.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f43776a = iArr;
            }
        }

        private C0615a() {
        }

        public final a a(GameInfoType type) {
            Intrinsics.h(type, "type");
            int i11 = C0616a.f43776a[type.ordinal()];
            if (i11 == 1) {
                return new AHAGameResLoader();
            }
            if (i11 == 2) {
                return new PSGameResLoader();
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    void a(Context context, String str, String str2, Function1 function1);
}
