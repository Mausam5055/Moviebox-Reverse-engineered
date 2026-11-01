.class public LAbdullah/hook$a;
.super Ljava/lang/Object;


# static fields
.field static sig_data:Ljava/lang/String;

.field public static signatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AQAAA3UwggNxMIICWaADAgECAgQd+BojMA0GCSqGSIb3DQEBCwUAMGgxCzAJBgNVBAYTAkNOMREwDwYDVQQIEwhzaGFuZ2hhaTERMA8GA1UEBxMIc2hhbmdoYWkxCzAJBgNVBAoTAm1pMRIwEAYDVQQLEwl0cmFuc3Npb24xEjAQBgNVBAMTCXRzb25lcm9vbTAgFw0yMjA3MTUwNjEyMzlaGA8yMTIxMDYyMTA2MTIzOVowaDELMAkGA1UEBhMCQ04xETAPBgNVBAgTCHNoYW5naGFpMREwDwYDVQQHEwhzaGFuZ2hhaTELMAkGA1UEChMCbWkxEjAQBgNVBAsTCXRyYW5zc2lvbjESMBAGA1UEAxMJdHNvbmVyb29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk0YZEMSQHs8B1CJYSwU8fIIVuEANfuLz9duIQs0xXsOZ22h1WQhIRdHFZtaq7YIrGe8rUCrlBufnQAkal2QnHoNYQ+0dDOXY5m++V2Z21VGBfQy6Mvu/Ssrg0WUkbJDsoq+ZjV/zKaDeNJqX3OPtJDTJO+6j7HHO/M2XLV/gFkLyylTUsyq5ARQRZJ1ofhvB+LzmaYjhIiOdccTFjdw61D50mkBDTuEphvROn8ZzuHYSv4Ij+scE5V2zuF3A3R1QrsOvWetx+ENvyxVNJ9YaiDptVtAyBcxQfJJhcjqGEQTtbD2Ds0mVUvOCNrCKpCZdTUAUogaQA4urEZzcs7uWJwIDAQABoyEwHzAdBgNVHQ4EFgQU+EX01Mo9LncrLVWkeUn0Dsq2BkgwDQYJKoZIhvcNAQELBQADggEBAFTiCKi/KHxw4svzrhVXISvM42swEoo7JoYJrbPc6o+bV3k3BVa+HE7Vy3/fPqGOEaPka2BQ6ODUiqlU852RJL2tiACyj9EncR3v/T1ZqkpDnV2tyHM5XyoSlWu5DtgfBtxhv15tyJs/Eob7s/0R1fCGfnn9xtn797KpMjDcEZYSAX3cmIdjwTfasB/w6cdlVcQ1rEBUFNJWhqWVUutgN/7rKHVc0VT1IcuHrF3WTjq7zdcgnV7yMK9F2Y98ZmCay9HLDPYIeyDVHpQcU1BiwIM3WK+0BsRZ0EZwwpmkjIzyy0vtjg1fuDbsSGhh6j5xcJtPb2bDJaSsrsGlKvWHxWM="

    sput-object v0, LAbdullah/hook$a;->sig_data:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, LAbdullah/hook$a;->signatures:[Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, LAbdullah/hook$a;->sig_data:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    new-array v1, v1, [[B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v3, v3, [B

    aput-object v3, v1, v2

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v1

    new-array v2, v2, [Landroid/content/pm/Signature;

    sput-object v2, LAbdullah/hook$a;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    :goto_1
    sget-object v3, LAbdullah/hook$a;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    new-instance v4, Landroid/content/pm/Signature;

    aget-object v5, v1, v2

    invoke-direct {v4, v5}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static getApkContentsSigners(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;
    .locals 1

    sget-object v0, LAbdullah/hook$a;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    invoke-static {}, LAbdullah/hook$a;->a()V

    sget-object v0, LAbdullah/hook$a;->signatures:[Landroid/content/pm/Signature;

    return-object v0

    :cond_0
    return-object v0
.end method

.method public static getSigningCertificateHistory(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, LAbdullah/hook$a;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_1

    invoke-static {}, LAbdullah/hook$a;->a()V

    sget-object v0, LAbdullah/hook$a;->signatures:[Landroid/content/pm/Signature;

    return-object v0

    :cond_1
    return-object v0
.end method
