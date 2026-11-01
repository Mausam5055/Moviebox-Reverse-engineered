.class public final Lcom/cloud/hisavana/sdk/k5;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/k5;

.field private static b:Ljava/lang/Integer;

.field private static c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/k5;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/k5;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/k5;->a:Lcom/cloud/hisavana/sdk/k5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    if-eqz p0, :cond_0

    sput-object p0, Lcom/cloud/hisavana/sdk/k5;->b:Ljava/lang/Integer;

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "show_data_sync_time_interval"

    invoke-virtual {v0, v2, v1}, Lj7/a;->p(Ljava/lang/String;I)V

    :cond_0
    if-eqz p1, :cond_1

    sput-object p1, Lcom/cloud/hisavana/sdk/k5;->c:Ljava/lang/Integer;

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "click_data_sync_time_interval"

    invoke-virtual {v0, v2, v1}, Lj7/a;->p(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDataSyncTimeInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\uff0cclickDataSyncTimeInterval = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AttrDataManager"

    invoke-virtual {v0, p1, p0}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/hisavana/sdk/y;->a:Lcom/cloud/hisavana/sdk/y;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->h()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    sget-object v0, Lcom/cloud/hisavana/sdk/k5;->c:Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v2, "click_data_sync_time_interval"

    invoke-virtual {v0, v2, v1}, Lj7/a;->g(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/k5;->c:Ljava/lang/Integer;

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/k5;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method

.method public final c(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/k5;->a()I

    move-result v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickDataSyncAction timeInterval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttrDataManager"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    if-eqz p1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final d()I
    .locals 3

    sget-object v0, Lcom/cloud/hisavana/sdk/k5;->b:Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v2, "show_data_sync_time_interval"

    invoke-virtual {v0, v2, v1}, Lj7/a;->g(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/k5;->b:Ljava/lang/Integer;

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/k5;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method
