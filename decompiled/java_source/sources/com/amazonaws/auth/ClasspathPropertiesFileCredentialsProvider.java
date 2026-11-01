package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class ClasspathPropertiesFileCredentialsProvider implements AWSCredentialsProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f18357b = "AwsCredentials.properties";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18358a;

    public ClasspathPropertiesFileCredentialsProvider() {
        this(f18357b);
    }

    public ClasspathPropertiesFileCredentialsProvider(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Credentials file path cannot be null");
        }
        if (str.startsWith("/")) {
            this.f18358a = str;
            return;
        }
        this.f18358a = "/" + str;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials a() {
        InputStream resourceAsStream = getClass().getResourceAsStream(this.f18358a);
        if (resourceAsStream == null) {
            throw new AmazonClientException("Unable to load AWS credentials from the " + this.f18358a + " file on the classpath");
        }
        try {
            return new PropertiesCredentials(resourceAsStream);
        } catch (IOException e11) {
            throw new AmazonClientException("Unable to load AWS credentials from the " + this.f18358a + " file on the classpath", e11);
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f18358a + ")";
    }
}
