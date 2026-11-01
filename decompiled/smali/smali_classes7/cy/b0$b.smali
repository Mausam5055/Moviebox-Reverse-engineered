.class public final Lcy/b0$b;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcy/b0;->I(Landroid/view/View;)Ldi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcy/b0;

.field final synthetic e:Landroid/view/View;


# direct methods
.method constructor <init>(Lcy/b0;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcy/b0$b;->d:Lcy/b0;

    iput-object p2, p0, Lcy/b0$b;->e:Landroid/view/View;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    iget-object p1, p0, Lcy/b0$b;->d:Lcy/b0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcy/b0;->F(Lcy/b0;J)V

    iget-object v2, p0, Lcy/b0$b;->d:Lcy/b0;

    iget-object v3, p0, Lcy/b0$b;->e:Landroid/view/View;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcy/b0;->L(Lcy/b0;Landroid/view/View;JILjava/lang/Object;)V

    return-void
.end method
