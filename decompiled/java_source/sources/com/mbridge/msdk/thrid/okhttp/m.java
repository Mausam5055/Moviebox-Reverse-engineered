package com.mbridge.msdk.thrid.okhttp;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f38281a = new a();

    static class a implements m {
        a() {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.m
        public List<InetAddress> a(String str) throws UnknownHostException {
            if (str == null) {
                throw new UnknownHostException("hostname == null");
            }
            try {
                return Arrays.asList(InetAddress.getAllByName(str));
            } catch (NullPointerException e11) {
                UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + str);
                unknownHostException.initCause(e11);
                throw unknownHostException;
            }
        }
    }

    List<InetAddress> a(String str) throws UnknownHostException;
}
