.class public Lcom/pgl/ssdk/w;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:Z

.field private static h:Landroid/hardware/input/InputManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/hardware/input/InputManager;
    .locals 0

    invoke-static {p0}, Lcom/pgl/ssdk/w;->b(Landroid/content/Context;)Landroid/hardware/input/InputManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/pgl/ssdk/w;->h()V

    return-void
.end method

.method public static a(Landroid/view/MotionEvent;Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p0

    new-instance v0, Lcom/pgl/ssdk/w$a;

    invoke-direct {v0, p1, p0}, Lcom/pgl/ssdk/w$a;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/pgl/ssdk/o0;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/pgl/ssdk/w;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/pgl/ssdk/w;->h()V

    const-string v0, "vihc"

    :try_start_0
    sget v1, Lcom/pgl/ssdk/w;->d:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "eihc"

    :try_start_1
    sget v1, Lcom/pgl/ssdk/w;->e:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "nihc"

    :try_start_2
    sget v1, Lcom/pgl/ssdk/w;->f:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "vic"

    :try_start_3
    sget v1, Lcom/pgl/ssdk/w;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "nic"

    :try_start_4
    sget v1, Lcom/pgl/ssdk/w;->c:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "eic"

    :try_start_5
    sget v1, Lcom/pgl/ssdk/w;->b:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic b()I
    .locals 2

    sget v0, Lcom/pgl/ssdk/w;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/pgl/ssdk/w;->c:I

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/pgl/ssdk/w;->h()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move p0, v0

    goto :goto_1

    :sswitch_0
    const-string v1, "vihc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "nihc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "eihc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "vic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "nic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "eic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    sget p0, Lcom/pgl/ssdk/w;->d:I

    return p0

    :pswitch_1
    sget p0, Lcom/pgl/ssdk/w;->f:I

    return p0

    :pswitch_2
    sget p0, Lcom/pgl/ssdk/w;->e:I

    return p0

    :pswitch_3
    sget p0, Lcom/pgl/ssdk/w;->a:I

    return p0

    :pswitch_4
    sget p0, Lcom/pgl/ssdk/w;->c:I

    return p0

    :pswitch_5
    sget p0, Lcom/pgl/ssdk/w;->b:I

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1883f -> :sswitch_5
        0x1aa08 -> :sswitch_4
        0x1c810 -> :sswitch_3
        0x2f809f -> :sswitch_2
        0x3397f6 -> :sswitch_1
        0x373aee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;)Landroid/hardware/input/InputManager;
    .locals 1

    sget-object v0, Lcom/pgl/ssdk/w;->h:Landroid/hardware/input/InputManager;

    if-nez v0, :cond_0

    const-string v0, "input"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    sput-object p0, Lcom/pgl/ssdk/w;->h:Landroid/hardware/input/InputManager;

    :cond_0
    sget-object p0, Lcom/pgl/ssdk/w;->h:Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method static synthetic c()I
    .locals 2

    sget v0, Lcom/pgl/ssdk/w;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/pgl/ssdk/w;->f:I

    return v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/pgl/ssdk/x;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pgl/ssdk/u0;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic d()I
    .locals 2

    sget v0, Lcom/pgl/ssdk/w;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/pgl/ssdk/w;->a:I

    return v0
.end method

.method static synthetic e()I
    .locals 2

    sget v0, Lcom/pgl/ssdk/w;->d:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/pgl/ssdk/w;->d:I

    return v0
.end method

.method static synthetic f()I
    .locals 2

    sget v0, Lcom/pgl/ssdk/w;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/pgl/ssdk/w;->b:I

    return v0
.end method

.method static synthetic g()I
    .locals 2

    sget v0, Lcom/pgl/ssdk/w;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/pgl/ssdk/w;->e:I

    return v0
.end method

.method private static h()V
    .locals 3

    sget-boolean v0, Lcom/pgl/ssdk/w;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/pgl/ssdk/x;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pgl/ssdk/u0;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "nihc"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/pgl/ssdk/w;->f:I

    const-string v1, "eihc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/pgl/ssdk/w;->e:I

    const-string v1, "vihc"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/pgl/ssdk/w;->d:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/pgl/ssdk/w;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
