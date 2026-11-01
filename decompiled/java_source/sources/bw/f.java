package bw;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Gson f16938a;

    static {
        Gson gsonCreate = new GsonBuilder().serializeNulls().setPrettyPrinting().create();
        Intrinsics.g(gsonCreate, "create(...)");
        f16938a = gsonCreate;
    }
}
