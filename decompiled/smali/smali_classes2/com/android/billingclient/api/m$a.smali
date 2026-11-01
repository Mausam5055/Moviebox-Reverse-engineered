.class public Lcom/android/billingclient/api/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/util/ArrayList;

.field private e:Z

.field private f:Lcom/android/billingclient/api/m$c$a;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/m$c;->a()Lcom/android/billingclient/api/m$c$a;

    move-result-object p1

    invoke-static {p1}, Lcom/android/billingclient/api/m$c$a;->b(Lcom/android/billingclient/api/m$c$a;)Lcom/android/billingclient/api/m$c$a;

    iput-object p1, p0, Lcom/android/billingclient/api/m$a;->f:Lcom/android/billingclient/api/m$c$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/m;
    .locals 11

    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->d:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Details of the products must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set SkuDetails or ProductDetailsParams, not both."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    const/4 v4, 0x0

    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/android/billingclient/api/m$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/billingclient/api/m$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v1, :cond_6

    goto/16 :goto_7

    :cond_6
    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw v4

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v5, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/m$b;

    move v6, v2

    :goto_4
    iget-object v7, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "play_pass_subs"

    if-ge v6, v7, :cond_c

    iget-object v7, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/billingclient/api/m$b;

    if-eqz v7, :cond_b

    if-eqz v6, :cond_a

    invoke-virtual {v7}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/billingclient/api/r;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/billingclient/api/r;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v7}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/billingclient/api/r;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All products should have same ProductType."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ProductDetailsParams cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {v5}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/billingclient/api/r;->e()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/billingclient/api/m$b;

    invoke-virtual {v5}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/billingclient/api/r;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v9}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/billingclient/api/r;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v9}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/billingclient/api/r;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_6

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All products must have the same package name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_7
    new-instance v5, Lcom/android/billingclient/api/m;

    invoke-direct {v5, v4}, Lcom/android/billingclient/api/m;-><init>(Lcom/android/billingclient/api/l0;)V

    if-nez v0, :cond_13

    if-eqz v3, :cond_10

    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/m$b;

    invoke-virtual {v0}, Lcom/android/billingclient/api/m$b;->b()Lcom/android/billingclient/api/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/r;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_8

    :cond_10
    move v1, v2

    :goto_8
    invoke-static {v5, v1}, Lcom/android/billingclient/api/m;->j(Lcom/android/billingclient/api/m;Z)V

    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->a:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/billingclient/api/m;->l(Lcom/android/billingclient/api/m;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->b:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/billingclient/api/m;->m(Lcom/android/billingclient/api/m;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->f:Lcom/android/billingclient/api/m$c$a;

    invoke-virtual {v0}, Lcom/android/billingclient/api/m$c$a;->a()Lcom/android/billingclient/api/m$c;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/billingclient/api/m;->p(Lcom/android/billingclient/api/m;Lcom/android/billingclient/api/m$c;)V

    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_9

    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    invoke-static {v5, v1}, Lcom/android/billingclient/api/m;->o(Lcom/android/billingclient/api/m;Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lcom/android/billingclient/api/m$a;->e:Z

    invoke-static {v5, v0}, Lcom/android/billingclient/api/m;->k(Lcom/android/billingclient/api/m;Z)V

    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzj(Ljava/util/Collection;)Lcom/google/android/gms/internal/play_billing/zzaf;

    move-result-object v0

    goto :goto_a

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    move-result-object v0

    :goto_a
    invoke-static {v5, v0}, Lcom/android/billingclient/api/m;->n(Lcom/android/billingclient/api/m;Lcom/google/android/gms/internal/play_billing/zzaf;)V

    return-object v5

    :cond_13
    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw v4
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/m$a;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/m$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/android/billingclient/api/m$a;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/billingclient/api/m$a;->c:Ljava/util/List;

    return-object p0
.end method
