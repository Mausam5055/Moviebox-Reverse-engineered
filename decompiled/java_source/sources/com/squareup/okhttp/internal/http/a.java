package com.squareup.okhttp.internal.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.Authenticator;
import com.squareup.okhttp.Challenge;
import com.squareup.okhttp.Credentials;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements Authenticator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Authenticator f40441a = new a();

    private InetAddress a(Proxy proxy, HttpUrl httpUrl) {
        return (proxy == null || proxy.type() == Proxy.Type.DIRECT) ? InetAddress.getByName(httpUrl.host()) : ((InetSocketAddress) proxy.address()).getAddress();
    }

    @Override // com.squareup.okhttp.Authenticator
    public Request authenticate(Proxy proxy, Response response) {
        PasswordAuthentication passwordAuthenticationRequestPasswordAuthentication;
        List<Challenge> listChallenges = response.challenges();
        Request request = response.request();
        HttpUrl httpUrl = request.httpUrl();
        int size = listChallenges.size();
        for (int i11 = 0; i11 < size; i11++) {
            Challenge challenge = listChallenges.get(i11);
            if ("Basic".equalsIgnoreCase(challenge.getScheme()) && (passwordAuthenticationRequestPasswordAuthentication = java.net.Authenticator.requestPasswordAuthentication(httpUrl.host(), a(proxy, httpUrl), httpUrl.port(), httpUrl.scheme(), challenge.getRealm(), challenge.getScheme(), httpUrl.url(), java.net.Authenticator.RequestorType.SERVER)) != null) {
                return request.newBuilder().header(HttpHeaders.AUTHORIZATION, Credentials.basic(passwordAuthenticationRequestPasswordAuthentication.getUserName(), new String(passwordAuthenticationRequestPasswordAuthentication.getPassword()))).build();
            }
        }
        return null;
    }

    @Override // com.squareup.okhttp.Authenticator
    public Request authenticateProxy(Proxy proxy, Response response) {
        List<Challenge> listChallenges = response.challenges();
        Request request = response.request();
        HttpUrl httpUrl = request.httpUrl();
        int size = listChallenges.size();
        for (int i11 = 0; i11 < size; i11++) {
            Challenge challenge = listChallenges.get(i11);
            if ("Basic".equalsIgnoreCase(challenge.getScheme())) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
                PasswordAuthentication passwordAuthenticationRequestPasswordAuthentication = java.net.Authenticator.requestPasswordAuthentication(inetSocketAddress.getHostName(), a(proxy, httpUrl), inetSocketAddress.getPort(), httpUrl.scheme(), challenge.getRealm(), challenge.getScheme(), httpUrl.url(), java.net.Authenticator.RequestorType.PROXY);
                if (passwordAuthenticationRequestPasswordAuthentication != null) {
                    return request.newBuilder().header("Proxy-Authorization", Credentials.basic(passwordAuthenticationRequestPasswordAuthentication.getUserName(), new String(passwordAuthenticationRequestPasswordAuthentication.getPassword()))).build();
                }
            }
        }
        return null;
    }
}
