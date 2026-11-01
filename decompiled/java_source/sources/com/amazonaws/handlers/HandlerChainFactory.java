package com.amazonaws.handlers;

import android.support.v4.media.session.c;
import com.amazonaws.AmazonClientException;
import com.amazonaws.util.ClassLoaderHelper;
import com.amazonaws.util.StringUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HandlerChainFactory {
    private List a(String str, Class cls) throws Throwable {
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = null;
        try {
            try {
                InputStream resourceAsStream = getClass().getResourceAsStream(str);
                if (resourceAsStream == null) {
                    return arrayList;
                }
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(resourceAsStream, StringUtils.f19004a));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            try {
                                bufferedReader2.close();
                            } catch (IOException unused) {
                            }
                            return arrayList;
                        }
                        String strTrim = line.trim();
                        if (!"".equals(strTrim)) {
                            Object objNewInstance = ClassLoaderHelper.loadClass(strTrim, cls, getClass()).newInstance();
                            if (!cls.isInstance(objNewInstance)) {
                                throw new AmazonClientException("Unable to instantiate request handler chain for client.  Listed request handler ('" + strTrim + "') does not implement the " + cls + " API.");
                            }
                            if (cls == RequestHandler2.class) {
                                arrayList.add((RequestHandler2) objNewInstance);
                            } else {
                                if (cls != RequestHandler.class) {
                                    throw new IllegalStateException();
                                }
                                c.a(objNewInstance);
                                arrayList.add(RequestHandler2.a(null));
                            }
                        }
                    } catch (Exception e11) {
                        e = e11;
                        bufferedReader = bufferedReader2;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (Exception e12) {
                e = e12;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        throw new AmazonClientException("Unable to instantiate request handler chain for client: " + e.getMessage(), e);
    }

    public List b(String str) {
        return a(str, RequestHandler2.class);
    }

    public List c(String str) {
        return a(str, RequestHandler.class);
    }
}
