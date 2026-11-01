.class public final Lcom/android/billingclient/api/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private volatile a:Lcom/android/billingclient/api/x0;

.field private final b:Landroid/content/Context;

.field private volatile c:Lcom/android/billingclient/api/v;

.field private volatile d:Z


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/h$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/h;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/billingclient/api/h$a;->b:Landroid/content/Context;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/billingclient/api/h$a;->c:Lcom/android/billingclient/api/v;

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/billingclient/api/h$a;->d:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/billingclient/api/i;

    iget-object v2, v0, Lcom/android/billingclient/api/h$a;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3, v3}, Lcom/android/billingclient/api/i;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/n0;Ljava/util/concurrent/ExecutorService;)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Please provide a valid listener for purchases updates."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, v0, Lcom/android/billingclient/api/h$a;->a:Lcom/android/billingclient/api/x0;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/billingclient/api/h$a;->c:Lcom/android/billingclient/api/v;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/billingclient/api/i;

    iget-object v4, v0, Lcom/android/billingclient/api/h$a;->a:Lcom/android/billingclient/api/x0;

    iget-object v5, v0, Lcom/android/billingclient/api/h$a;->b:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/billingclient/api/h$a;->c:Lcom/android/billingclient/api/v;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/billingclient/api/i;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/x0;Landroid/content/Context;Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/c;Lcom/android/billingclient/api/n0;Ljava/util/concurrent/ExecutorService;)V

    return-object v1

    :cond_2
    new-instance v1, Lcom/android/billingclient/api/i;

    iget-object v12, v0, Lcom/android/billingclient/api/h$a;->a:Lcom/android/billingclient/api/x0;

    iget-object v13, v0, Lcom/android/billingclient/api/h$a;->b:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/android/billingclient/api/i;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/x0;Landroid/content/Context;Lcom/android/billingclient/api/t0;Lcom/android/billingclient/api/n0;Ljava/util/concurrent/ExecutorService;)V

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pending purchases for one-time products must be supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Please provide a valid Context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b()Lcom/android/billingclient/api/h$a;
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/v0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/v0;-><init>(Lcom/android/billingclient/api/u0;)V

    invoke-virtual {v0}, Lcom/android/billingclient/api/v0;->a()Lcom/android/billingclient/api/v0;

    invoke-virtual {v0}, Lcom/android/billingclient/api/v0;->b()Lcom/android/billingclient/api/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/h$a;->a:Lcom/android/billingclient/api/x0;

    return-object p0
.end method

.method public c(Lcom/android/billingclient/api/v;)Lcom/android/billingclient/api/h$a;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/h$a;->c:Lcom/android/billingclient/api/v;

    return-object p0
.end method
