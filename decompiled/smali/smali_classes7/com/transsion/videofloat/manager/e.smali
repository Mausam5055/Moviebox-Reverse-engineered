.class public final synthetic Lcom/transsion/videofloat/manager/e;
.super Ljava/lang/Object;

# interfaces
.implements Lze/b;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/videofloat/manager/i;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/videofloat/manager/e;->a:Z

    iput-object p2, p0, Lcom/transsion/videofloat/manager/e;->b:Lcom/transsion/videofloat/manager/i;

    iput-object p3, p0, Lcom/transsion/videofloat/manager/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/videofloat/manager/e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/videofloat/manager/e;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/videofloat/manager/e;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcf/f;Ljava/util/List;ZZ)V
    .locals 10

    iget-boolean v0, p0, Lcom/transsion/videofloat/manager/e;->a:Z

    iget-object v1, p0, Lcom/transsion/videofloat/manager/e;->b:Lcom/transsion/videofloat/manager/i;

    iget-object v2, p0, Lcom/transsion/videofloat/manager/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/videofloat/manager/e;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/videofloat/manager/e;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/videofloat/manager/e;->f:Ljava/lang/String;

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v0 .. v9}, Lcom/transsion/videofloat/manager/i;->i(ZLcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcf/f;Ljava/util/List;ZZ)V

    return-void
.end method
