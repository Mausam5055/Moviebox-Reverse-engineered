.class public Lcom/google/firebase/services;
.super Ljava/lang/Object;
.source "services.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/services$100000000;,
        Lcom/google/firebase/services$100000002;,
        Lcom/google/firebase/services$CenterCropDrawable;,
        Lcom/google/firebase/services$100000003;,
        Lcom/google/firebase/services$100000004;,
        Lcom/google/firebase/services$100000005;,
        Lcom/google/firebase/services$100000006;
    }
.end annotation


# static fields
.field private static COL_ACCENT:I = 0x0

.field private static final COL_BORDER:I

.field private static final COL_GLASS_BG:I

.field private static final COL_HEADER_BG:I

.field private static final FORCE_DEBUG_SHOW:Z = false

.field private static final JSON_URL:Ljava/lang/String; = ""

.field private static final KEY_CACHE:Ljava/lang/String; = "json_cache"

.field private static final KEY_LATER_TIME:Ljava/lang/String; = "later_timestamp"

.field private static final PREF_NAME:Ljava/lang/String; = "kingrtk"


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const-string v0, "#D500F9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/firebase/services;->COL_ACCENT:I

    const-string v0, "#70000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/firebase/services;->COL_GLASS_BG:I

    const-string v0, "#60FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/firebase/services;->COL_BORDER:I

    const-string v0, "#F2050505"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/firebase/services;->COL_HEADER_BG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000012(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/google/firebase/services;->parseTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000014([I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/services;->intToString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000019(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/google/firebase/services;->showAlienDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$1000029(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/services;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000030(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/services;->fetchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$L1000000()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "an"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ca"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$L1000001()Z
    .locals 1

    sget-boolean v0, Lcom/google/firebase/services;->FORCE_DEBUG_SHOW:Z

    return v0
.end method

.method static synthetic access$L1000006()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/firebase/services;->PREF_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000007()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/firebase/services;->KEY_CACHE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000008()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/firebase/services;->KEY_LATER_TIME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic access$S1000001(Z)V
    .locals 0

    sput-boolean p0, Lcom/google/firebase/services;->FORCE_DEBUG_SHOW:Z

    return-void
.end method

.method static synthetic access$S1000006(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/google/firebase/services;->PREF_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000007(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/google/firebase/services;->KEY_CACHE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000008(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/google/firebase/services;->KEY_LATER_TIME:Ljava/lang/String;

    return-void
.end method

.method private static addPressEffect(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 487
    new-instance v0, Lcom/google/firebase/services$100000006;

    invoke-direct {v0}, Lcom/google/firebase/services$100000006;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static check(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 78
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    const-string v0, "cwjhct"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/firebase/services;->xorDecrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "}p`mehkc"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/firebase/services;->xorDecrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 84
    :try_start_0
    const-string v2, "com.google.firebase.services"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Lcom/google/firebase/services$100000000;

    invoke-direct {v0, p0}, Lcom/google/firebase/services$100000000;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    return-void

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/firebase/services$100000002;

    invoke-direct {v1, p0}, Lcom/google/firebase/services$100000002;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 84
    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    :goto_0
    return-void
.end method

.method private static fetchUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 582
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 584
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 585
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 586
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 587
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    nop

    .line 589
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 590
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 591
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 589
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    :catch_0
    move-exception p0

    .line 592
    const/4 p0, 0x0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object p0
.end method

.method private static getAssetBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 569
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 570
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 571
    const/4 p0, 0x0

    move-object p1, p0

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 554
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 555
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 556
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 557
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 558
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 559
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 560
    const v4, -0xbdbdbe

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 562
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 563
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 564
    return-object v0
.end method

.method private static intToString([I)Ljava/lang/String;
    .locals 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 216
    :cond_0
    aget v2, p0, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 575
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 576
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 577
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static parseTime(Ljava/lang/String;)J
    .locals 6

    .line 180
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 182
    const/4 v1, 0x1

    int-to-long v1, v1

    .line 184
    const-string v3, "h"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_1

    .line 185
    const v1, 0x36ee80

    int-to-long v1, v1

    .line 186
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 187
    :cond_1
    const-string v3, "m"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    const v1, 0xea60

    int-to-long v1, v1

    .line 189
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 190
    :cond_2
    const-string v3, "d"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 191
    const v1, 0x5265c00

    int-to-long v1, v1

    .line 192
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 193
    :cond_3
    const-string v3, "s"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 194
    const/16 v1, 0x3e8

    int-to-long v1, v1

    .line 195
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 199
    :cond_4
    :goto_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long v3, v3, v1

    return-wide v3

    :catch_0
    move-exception p0

    .line 201
    int-to-long v0, v0

    return-wide v0

    .line 180
    :cond_5
    :goto_1
    int-to-long v0, v0

    return-wide v0
.end method

.method private static showAlienDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .line 224
    move-object/from16 v0, p0

    move/from16 v1, p9

    :try_start_0
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 225
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 227
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 228
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v6, 0x3f333333    # 0.7f

    invoke-virtual {v4, v6}, Landroid/view/Window;->setDimAmount(F)V

    .line 231
    :cond_0
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 233
    const-string v4, "montez.ttf"

    invoke-static {v0, v4}, Lcom/google/firebase/services;->getAssetBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 234
    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/google/firebase/services;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v6

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v4, v6

    .line 236
    :goto_0
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 238
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 239
    const/16 v8, 0x1e

    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 241
    const-string v9, "reverie.ttf"

    invoke-static {v0, v9}, Lcom/google/firebase/services;->getAssetBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 242
    const/16 v10, 0x3c

    if-eqz v9, :cond_2

    .line 243
    new-instance v11, Lcom/google/firebase/services$CenterCropDrawable;

    int-to-float v10, v10

    invoke-direct {v11, v9, v10, v5, v5}, Lcom/google/firebase/services$CenterCropDrawable;-><init>(Landroid/graphics/Bitmap;FII)V

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 245
    :cond_2
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 246
    const-string v11, "#121212"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 247
    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 248
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :goto_1
    nop

    .line 252
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    .line 253
    sget-object v9, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 257
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 258
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 259
    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 260
    invoke-virtual {v9, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 262
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 263
    sget v12, Lcom/google/firebase/services;->COL_HEADER_BG:I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 264
    const/16 v12, 0x28

    int-to-float v13, v12

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 265
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v11, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 268
    const/16 v15, 0xa

    invoke-virtual {v11, v5, v15, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    invoke-virtual {v7, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 272
    if-eqz v4, :cond_3

    .line 273
    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 275
    :cond_3
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 276
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 277
    sget v15, Lcom/google/firebase/services;->COL_ACCENT:I

    invoke-virtual {v4, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 278
    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 280
    :goto_2
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x82

    invoke-direct {v4, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 281
    const/16 v15, 0x23

    invoke-virtual {v4, v5, v5, v15, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 282
    invoke-virtual {v9, v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 285
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 286
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 287
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 289
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 291
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 292
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 293
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 295
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 296
    move-object/from16 v15, p1

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const/16 v15, 0x11

    int-to-float v13, v15

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 298
    sget v13, Lcom/google/firebase/services;->COL_ACCENT:I

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    move-object v13, v6

    check-cast v13, Landroid/graphics/Typeface;

    invoke-virtual {v10, v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 300
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 304
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 305
    invoke-virtual {v13, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 306
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 307
    invoke-virtual {v10, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 309
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0xf

    invoke-direct {v13, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 310
    const/16 v15, 0x14

    invoke-virtual {v13, v15, v5, v15, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 311
    invoke-virtual {v11, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    const/4 v13, 0x2

    new-array v15, v13, [Landroid/animation/PropertyValuesHolder;

    const-string v6, "scaleX"

    new-array v8, v3, [F

    const/high16 v16, 0x3fc00000    # 1.5f

    aput v16, v8, v5

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v15, v5

    const-string v6, "scaleY"

    new-array v8, v3, [F

    aput v16, v8, v5

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v15, v3

    invoke-static {v10, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 317
    const/16 v8, 0x320

    move-object v15, v4

    int-to-long v3, v8

    invoke-virtual {v6, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 318
    invoke-virtual {v6, v14}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 319
    invoke-virtual {v6, v13}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 320
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 321
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 323
    move-object v3, v15

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 325
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 326
    move-object/from16 v6, p2

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const/16 v6, 0xd

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 328
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 335
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 336
    const/16 v4, 0x1e

    invoke-virtual {v3, v12, v4, v12, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 338
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 339
    sget v8, Lcom/google/firebase/services;->COL_GLASS_BG:I

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 340
    const/16 v8, 0x19

    int-to-float v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 341
    sget v9, Lcom/google/firebase/services;->COL_BORDER:I

    invoke-virtual {v4, v13, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 342
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 344
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 345
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "\u2022 "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v15, ","

    const-string v10, "\n\u2022 "

    move-object/from16 v13, p3

    invoke-virtual {v13, v15, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 346
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    const/16 v10, 0xe

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 349
    const/4 v10, 0x0

    move-object v11, v10

    check-cast v11, Landroid/graphics/Typeface;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 350
    int-to-float v11, v5

    const v13, 0x3fa66666    # 1.3f

    invoke-virtual {v9, v11, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 351
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v9, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 354
    const/16 v13, 0x14

    invoke-virtual {v9, v5, v5, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 355
    invoke-virtual {v7, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 359
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 360
    const/16 v13, 0x1e

    invoke-virtual {v3, v12, v13, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 361
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 363
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 364
    move-object/from16 v12, p4

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const-string v12, "#DDDDDD"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 367
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 368
    const v6, 0x3f99999a    # 1.2f

    invoke-virtual {v4, v11, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 369
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    invoke-virtual {v7, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 375
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 376
    const/16 v4, 0x14

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 379
    const/16 v4, 0x6e

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez p8, :cond_5

    .line 380
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 381
    const/16 v11, 0x11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 382
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    const/4 v11, 0x0

    move-object v12, v11

    check-cast v12, Landroid/graphics/Typeface;

    const/4 v10, 0x1

    invoke-virtual {v9, v11, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 384
    move-object/from16 v11, p5

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 386
    invoke-static {v9}, Lcom/google/firebase/services;->addPressEffect(Landroid/view/View;)V

    .line 388
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 389
    const-string v13, "#40000000"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 390
    invoke-virtual {v12, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 391
    const-string v13, "#80FFFFFF"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    invoke-virtual {v12, v14, v13}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 392
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 395
    if-lez v1, :cond_4

    .line 396
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 397
    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setAlpha(F)V

    .line 398
    new-instance v12, Lcom/google/firebase/services$100000003;

    const/16 v13, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v14, v1

    int-to-long v10, v13

    move-object/from16 v17, v12

    move-wide/from16 v18, v14

    move-wide/from16 v20, v10

    move-object/from16 v22, v9

    move-object/from16 v23, p5

    invoke-direct/range {v17 .. v23}, Lcom/google/firebase/services$100000003;-><init>(JJLandroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/google/firebase/services$100000003;->start()Landroid/os/CountDownTimer;

    goto :goto_3

    .line 410
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 411
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 414
    :goto_3
    new-instance v1, Lcom/google/firebase/services$100000004;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/services$100000004;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 424
    const/16 v11, 0x14

    invoke-virtual {v1, v5, v5, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 425
    invoke-virtual {v3, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 379
    :cond_5
    const/16 v11, 0x14

    .line 429
    :goto_4
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 430
    move-object/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    const/16 v9, 0x11

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 432
    const/high16 v9, -0x1000000

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    const/4 v9, 0x0

    move-object v12, v9

    check-cast v12, Landroid/graphics/Typeface;

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 434
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 435
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 436
    invoke-static {v1}, Lcom/google/firebase/services;->addPressEffect(Landroid/view/View;)V

    .line 438
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 439
    sget v10, Lcom/google/firebase/services;->COL_ACCENT:I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 440
    invoke-virtual {v9, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 441
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 443
    new-instance v8, Lcom/google/firebase/services$100000005;

    move-object/from16 v9, p7

    invoke-direct {v8, v9, v0}, Lcom/google/firebase/services$100000005;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 468
    if-eqz p8, :cond_6

    const/4 v15, 0x0

    goto :goto_5

    :cond_6
    const/16 v15, 0x14

    :goto_5
    invoke-virtual {v8, v15, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 469
    invoke-virtual {v3, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 476
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v3, 0x3fec28f5c28f5c29L    # 0.88

    mul-double v0, v0, v3

    double-to-int v0, v0

    .line 477
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 478
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, -0x2

    invoke-virtual {v1, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 480
    :cond_7
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 482
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void
.end method

.method private static xorDecrypt(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 209
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    xor-int/2addr v2, p1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
