package com.amazonaws.internal.config;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class InternalConfig {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Log f18417g = LogFactory.b(InternalConfig.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SignerConfig f18418a = f();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f18420c = c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f18421d = e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f18419b = d();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f18422e = b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f18423f = a();

    public static class Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final InternalConfig f18424a;

        static {
            try {
                f18424a = new InternalConfig();
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception e12) {
                throw new IllegalStateException("Fatal: Failed to load the internal config for AWS Android SDK", e12);
            }
        }

        public static InternalConfig a() {
            return f18424a;
        }
    }

    InternalConfig() {
    }

    private static List a() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3\\.amazonaws\\.com", "us-east-1"));
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3-external-1\\.amazonaws\\.com", "us-east-1"));
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3-fips-us-gov-west-1\\.amazonaws\\.com", "us-gov-west-1"));
        return arrayList;
    }

    private static Map b() {
        HashMap map = new HashMap();
        map.put("AmazonCloudWatchClient", new HttpClientConfig("monitoring"));
        map.put("AmazonCloudWatchLogsClient", new HttpClientConfig("logs"));
        map.put("AmazonCognitoIdentityClient", new HttpClientConfig("cognito-identity"));
        map.put("AmazonCognitoIdentityProviderClient", new HttpClientConfig("cognito-idp"));
        map.put("AmazonCognitoSyncClient", new HttpClientConfig("cognito-sync"));
        map.put("AmazonComprehendClient", new HttpClientConfig("comprehend"));
        map.put("AmazonConnectClient", new HttpClientConfig("connect"));
        map.put("AmazonKinesisFirehoseClient", new HttpClientConfig("firehose"));
        map.put("AWSKinesisVideoArchivedMediaClient", new HttpClientConfig("kinesisvideo"));
        map.put("AWSKinesisVideoSignalingClient", new HttpClientConfig("kinesisvideo"));
        map.put("AWSIotClient", new HttpClientConfig("execute-api"));
        map.put("AmazonLexRuntimeClient", new HttpClientConfig("runtime.lex"));
        map.put("AmazonPinpointClient", new HttpClientConfig("mobiletargeting"));
        map.put("AmazonPinpointAnalyticsClient", new HttpClientConfig("mobileanalytics"));
        map.put("AmazonSageMakerRuntimeClient", new HttpClientConfig("sagemaker"));
        map.put("AmazonSimpleDBClient", new HttpClientConfig("sdb"));
        map.put("AmazonSimpleEmailServiceClient", new HttpClientConfig("email"));
        map.put("AWSSecurityTokenServiceClient", new HttpClientConfig("sts"));
        map.put("AmazonTextractClient", new HttpClientConfig("textract"));
        map.put("AmazonTranscribeClient", new HttpClientConfig("transcribe"));
        map.put("AmazonTranslateClient", new HttpClientConfig("translate"));
        return map;
    }

    private static Map c() {
        HashMap map = new HashMap();
        map.put("eu-central-1", new SignerConfig("AWS4SignerType"));
        map.put("cn-north-1", new SignerConfig("AWS4SignerType"));
        return map;
    }

    private static Map d() {
        HashMap map = new HashMap();
        map.put("s3/eu-central-1", new SignerConfig("AWSS3V4SignerType"));
        map.put("s3/cn-north-1", new SignerConfig("AWSS3V4SignerType"));
        map.put("s3/us-east-2", new SignerConfig("AWSS3V4SignerType"));
        map.put("s3/ca-central-1", new SignerConfig("AWSS3V4SignerType"));
        map.put("s3/ap-south-1", new SignerConfig("AWSS3V4SignerType"));
        map.put("s3/ap-northeast-2", new SignerConfig("AWSS3V4SignerType"));
        map.put("s3/eu-west-2", new SignerConfig("AWSS3V4SignerType"));
        return map;
    }

    private static Map e() {
        HashMap map = new HashMap();
        map.put("ec2", new SignerConfig("QueryStringSignerType"));
        map.put("email", new SignerConfig("AWS4SignerType"));
        map.put("s3", new SignerConfig("AWSS3V4SignerType"));
        map.put("sdb", new SignerConfig("QueryStringSignerType"));
        map.put("runtime.lex", new SignerConfig("AmazonLexV4Signer"));
        map.put("polly", new SignerConfig("AmazonPollyCustomPresigner"));
        return map;
    }

    private static SignerConfig f() {
        return new SignerConfig("AWS4SignerType");
    }

    public List g() {
        return Collections.unmodifiableList(this.f18423f);
    }

    public HttpClientConfig h(String str) {
        return (HttpClientConfig) this.f18422e.get(str);
    }

    public SignerConfig i(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        if (str2 != null) {
            SignerConfig signerConfig = (SignerConfig) this.f18419b.get(str + "/" + str2);
            if (signerConfig != null) {
                return signerConfig;
            }
            SignerConfig signerConfig2 = (SignerConfig) this.f18420c.get(str2);
            if (signerConfig2 != null) {
                return signerConfig2;
            }
        }
        SignerConfig signerConfig3 = (SignerConfig) this.f18421d.get(str);
        return signerConfig3 == null ? this.f18418a : signerConfig3;
    }
}
