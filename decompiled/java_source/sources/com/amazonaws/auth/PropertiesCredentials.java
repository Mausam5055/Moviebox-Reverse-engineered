package com.amazonaws.auth;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/* JADX INFO: loaded from: classes2.dex */
public class PropertiesCredentials implements AWSCredentials {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18366b;

    public PropertiesCredentials(File file) throws FileNotFoundException {
        if (!file.exists()) {
            throw new FileNotFoundException("File doesn't exist:  " + file.getAbsolutePath());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            if (properties.getProperty("accessKey") == null || properties.getProperty("secretKey") == null) {
                throw new IllegalArgumentException("The specified file (" + file.getAbsolutePath() + ") doesn't contain the expected properties 'accessKey' and 'secretKey'.");
            }
            this.f18365a = properties.getProperty("accessKey");
            this.f18366b = properties.getProperty("secretKey");
            try {
                fileInputStream.close();
            } catch (IOException unused) {
            }
        } catch (Throwable th2) {
            try {
                fileInputStream.close();
            } catch (IOException unused2) {
            }
            throw th2;
        }
    }

    public PropertiesCredentials(InputStream inputStream) {
        Properties properties = new Properties();
        try {
            properties.load(inputStream);
            try {
                inputStream.close();
            } catch (Exception unused) {
            }
            if (properties.getProperty("accessKey") == null || properties.getProperty("secretKey") == null) {
                throw new IllegalArgumentException("The specified properties data doesn't contain the expected properties 'accessKey' and 'secretKey'.");
            }
            this.f18365a = properties.getProperty("accessKey");
            this.f18366b = properties.getProperty("secretKey");
        } catch (Throwable th2) {
            try {
                inputStream.close();
            } catch (Exception unused2) {
            }
            throw th2;
        }
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String b() {
        return this.f18365a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String c() {
        return this.f18366b;
    }
}
