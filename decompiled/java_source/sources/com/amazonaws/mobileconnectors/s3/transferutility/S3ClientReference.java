package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.services.s3.AmazonS3;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
abstract class S3ClientReference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map f18451a = new ConcurrentHashMap();

    public static AmazonS3 a(Integer num) {
        return (AmazonS3) f18451a.get(num);
    }

    public static void b(Integer num, AmazonS3 amazonS3) {
        f18451a.put(num, amazonS3);
    }

    public static void c(Integer num) {
        f18451a.remove(num);
    }
}
