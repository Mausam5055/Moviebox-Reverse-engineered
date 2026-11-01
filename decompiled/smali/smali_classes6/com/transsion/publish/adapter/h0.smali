.class public final synthetic Lcom/transsion/publish/adapter/h0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/publish/adapter/k0;

.field public final synthetic e:Lcom/transsion/publish/adapter/m0;

.field public final synthetic f:Lcom/transsion/publish/api/VsMediaInfo;


# direct methods
.method public synthetic constructor <init>(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/publish/adapter/h0;->a:Z

    iput-boolean p2, p0, Lcom/transsion/publish/adapter/h0;->b:Z

    iput-boolean p3, p0, Lcom/transsion/publish/adapter/h0;->c:Z

    iput-object p4, p0, Lcom/transsion/publish/adapter/h0;->d:Lcom/transsion/publish/adapter/k0;

    iput-object p5, p0, Lcom/transsion/publish/adapter/h0;->e:Lcom/transsion/publish/adapter/m0;

    iput-object p6, p0, Lcom/transsion/publish/adapter/h0;->f:Lcom/transsion/publish/api/VsMediaInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-boolean v0, p0, Lcom/transsion/publish/adapter/h0;->a:Z

    iget-boolean v1, p0, Lcom/transsion/publish/adapter/h0;->b:Z

    iget-boolean v2, p0, Lcom/transsion/publish/adapter/h0;->c:Z

    iget-object v3, p0, Lcom/transsion/publish/adapter/h0;->d:Lcom/transsion/publish/adapter/k0;

    iget-object v4, p0, Lcom/transsion/publish/adapter/h0;->e:Lcom/transsion/publish/adapter/m0;

    iget-object v5, p0, Lcom/transsion/publish/adapter/h0;->f:Lcom/transsion/publish/api/VsMediaInfo;

    move-object v6, p1

    check-cast v6, Landroid/view/View;

    invoke-static/range {v0 .. v6}, Lcom/transsion/publish/adapter/k0;->j(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
