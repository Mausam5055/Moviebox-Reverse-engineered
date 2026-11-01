package c5;

import org.glassfish.jersey.internal.spi.AutoDiscoverable;

/* JADX INFO: loaded from: classes2.dex */
public class a implements AutoDiscoverable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f17001a = true;

    static {
        try {
            f17001a = Boolean.parseBoolean(System.getProperty("fastjson.auto.discoverable", String.valueOf(f17001a)));
        } catch (Throwable unused) {
        }
    }
}
