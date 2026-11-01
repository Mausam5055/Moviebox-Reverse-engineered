.class public final Lqw/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lqw/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqw/c;

    invoke-direct {v0}, Lqw/c;-><init>()V

    sput-object v0, Lqw/c;->a:Lqw/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    sget-object v0, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_user_agent"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b()V
    .locals 7

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_0

    :try_start_1
    const-string v4, "key_custom_date"

    invoke-virtual {v1, v4, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    sget-object v4, Lti/p;->a:Lti/p;

    invoke-virtual {v4}, Lti/p;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v1, :cond_5

    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v6, "AdDeveloperUtil --> \u7279\u6b8a\u6743\u9650\u6388\u6743\u5df2\u8fc7\u671f"

    invoke-static {v1, v6, v5, v4, v2}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "sp_code"

    invoke-virtual {v1, v4, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v4, "custom_local_iso"

    invoke-virtual {v1, v4, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "custom_local_country"

    invoke-virtual {v1, v4, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "custom_country_code"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    goto :goto_1

    :cond_5
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "AdDeveloperUtil --> \u7279\u6b8a\u6743\u9650\u5df2\u6388\u4e88"

    invoke-static {v0, v1, v5, v4, v2}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_6
    :goto_1
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "customDate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_custom_date"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_user_agent"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method
