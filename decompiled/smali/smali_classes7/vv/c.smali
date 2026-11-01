.class public abstract Lvv/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Ljava/lang/String;


# direct methods
.method public static a()Lcom/transsion/upgradesdk/bean/RequestBean;
    .locals 35

    const-string v1, "NoNet"

    sget-object v2, Lyv/f;->o:Lyv/d;

    invoke-virtual {v2}, Lyv/d;->a()Lyv/f;

    move-result-object v3

    invoke-virtual {v3}, Lyv/f;->e()Lvv/b;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-object v4, Lbw/c;->a:Ljavax/crypto/spec/IvParameterSpec;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lbw/n;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "Transsion"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbw/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    new-instance v30, Lcom/transsion/upgradesdk/bean/RequestBean;

    sget-object v4, Lbw/n;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    const-string v7, "application"

    if-eqz v4, :cond_1

    sget-object v4, Lbw/i;->b:Lbw/h;

    sget-object v8, Lxv/a;->a:Landroid/app/Application;

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v4, v8}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v4

    const-string v8, "KV_UPGRADE_GAID_ENCRYPT_VALUE"

    invoke-virtual {v4, v8, v5}, Lbw/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lbw/n;->b:Ljava/lang/String;

    :cond_1
    sget-object v8, Lbw/n;->b:Ljava/lang/String;

    iget-object v9, v3, Lvv/b;->a:Ljava/lang/String;

    iget-wide v10, v3, Lvv/b;->d:J

    iget-object v12, v3, Lvv/b;->e:Ljava/lang/String;

    iget-object v4, v3, Lvv/b;->h:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v3, Lvv/b;->i:Ljava/lang/String;

    move-object/from16 v17, v13

    iget-object v13, v3, Lvv/b;->k:Ljava/lang/String;

    move-wide/from16 v18, v14

    iget-object v14, v3, Lvv/b;->l:Ljava/lang/String;

    iget-object v15, v3, Lvv/b;->g:Ljava/lang/String;

    sget-object v20, Lvv/c;->a:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    const-string v6, "toString(...)"

    if-nez v20, :cond_2

    sget-object v2, Lvv/c;->a:Ljava/lang/String;

    move-object/from16 v25, v4

    move-object/from16 v24, v5

    move-object/from16 v31, v14

    move-object/from16 v27, v15

    move-object v15, v2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v2}, Lyv/d;->a()Lyv/f;

    move-result-object v2

    invoke-virtual {v2}, Lyv/f;->e()Lvv/b;

    move-result-object v2

    iget-object v2, v2, Lvv/b;->a:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    sget-object v24, Lxv/a;->a:Landroid/app/Application;

    if-eqz v24, :cond_3

    move-object/from16 v25, v4

    goto :goto_1

    :cond_3
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v25, v4

    const/16 v24, 0x0

    :goto_1
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v24, v5

    const/16 v5, 0x40

    :try_start_2
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v4, "getPackageInfo(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    move/from16 v26, v4

    aget-byte v4, v2, v5

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v27, v15

    :try_start_3
    const-string v15, "toHexString(...)"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v15, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v31, v14

    const/4 v14, 0x1

    if-ne v15, v14, :cond_4

    :try_start_4
    const-string v14, "0"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v4, v2

    const/4 v14, 0x1

    sub-int/2addr v4, v14

    if-ge v5, v4, :cond_5

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5
    const/4 v4, 0x1

    add-int/2addr v5, v4

    move/from16 v4, v26

    move-object/from16 v15, v27

    move-object/from16 v14, v31

    goto :goto_2

    :catch_0
    move-object/from16 v31, v14

    goto :goto_5

    :catch_1
    :cond_6
    :goto_3
    move-object/from16 v31, v14

    move-object/from16 v27, v15

    goto :goto_5

    :catch_2
    :goto_4
    move-object/from16 v24, v5

    goto :goto_3

    :catch_3
    move-object/from16 v25, v4

    goto :goto_4

    :catch_4
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lvv/c;->a:Ljava/lang/String;

    move-object v15, v0

    :goto_6
    iget-object v2, v3, Lvv/b;->f:Ljava/lang/String;

    iget-object v14, v3, Lvv/b;->m:Ljava/lang/String;

    sget-object v0, Lxv/a;->a:Landroid/app/Application;

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_5
    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v26

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    goto :goto_8

    :catch_5
    move-object/from16 v26, v14

    goto :goto_c

    :cond_8
    :goto_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    move-object/from16 v26, v14

    goto :goto_a

    :cond_a
    if-eqz v26, :cond_c

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v26, v14

    :try_start_6
    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v14, :cond_b

    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v5, v14, :cond_d

    :cond_b
    const-string v5, "WIFI"

    goto :goto_9

    :cond_c
    move-object/from16 v26, v14

    :cond_d
    move-object/from16 v5, v16

    :goto_9
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v14, :cond_e

    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v14, :cond_f

    :cond_e
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "GNET"

    goto :goto_b

    :pswitch_0
    const-string v0, "4G"

    goto :goto_b

    :pswitch_1
    const-string v0, "3G"

    goto :goto_b

    :pswitch_2
    const-string v0, "2G"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_b

    :cond_f
    move-object/from16 v32, v5

    goto :goto_d

    :goto_a
    move-object/from16 v0, v16

    :goto_b
    move-object/from16 v32, v0

    goto :goto_d

    :catch_6
    :goto_c
    move-object/from16 v32, v16

    :goto_d
    iget-object v3, v3, Lvv/b;->k:Ljava/lang/String;

    sget-object v0, Lvv/c;->b:Ljava/lang/String;

    if-nez v0, :cond_11

    sget-object v0, Lxv/a;->a:Landroid/app/Application;

    if-eqz v0, :cond_10

    goto :goto_e

    :cond_10
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "android_id"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvv/c;->b:Ljava/lang/String;

    :cond_11
    sget-object v33, Lvv/c;->b:Ljava/lang/String;

    sget v34, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v0

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v5, :cond_13

    aget-object v14, v0, v7

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v0

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    if-ge v7, v14, :cond_12

    const-string v14, ","

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    :try_start_7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.transsnet.store"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v0, v24

    :goto_10
    invoke-static {}, Lbw/n;->i()J

    move-result-wide v28

    move-object/from16 v16, v25

    move-object/from16 v4, v30

    move-object v5, v8

    move-object v6, v9

    move-wide v7, v10

    move-object v9, v12

    move-object/from16 v10, v16

    move-object v11, v1

    move-object v12, v13

    move-object/from16 v1, v17

    move-object/from16 v13, v31

    move-wide/from16 v21, v18

    move-object/from16 v17, v26

    move-object/from16 v26, v14

    move-object/from16 v14, v27

    move-object/from16 v16, v2

    move-object/from16 v18, v32

    move-object/from16 v19, v3

    move-object/from16 v20, v1

    move-object/from16 v24, v33

    move/from16 v25, v34

    move-object/from16 v27, v0

    invoke-direct/range {v4 .. v29}, Lcom/transsion/upgradesdk/bean/RequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    return-object v30

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
