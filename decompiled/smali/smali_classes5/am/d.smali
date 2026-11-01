.class public Lam/d;
.super Lam/c;


# instance fields
.field private l:Z

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Object;Lcom/transsion/http/d/h;Ljava/util/Map;ZIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 12

    move-object v11, p0

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lam/c;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/transsion/http/d/h;Ljava/util/Map;ZIIZLjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)V

    move v0, p3

    iput-boolean v0, v11, Lam/d;->l:Z

    move-object v0, p1

    iput-object v0, v11, Lam/d;->m:Landroid/content/Context;

    sget-object v0, Lbm/a;->a:Lbm/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin image url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-interface {v0, v2, v1}, Lbm/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected b()Lam/e;
    .locals 2

    iget-object v0, p0, Lam/c;->k:Lam/e$a;

    iget-boolean v1, p0, Lam/d;->l:Z

    invoke-virtual {v0, v1}, Lam/e$a;->m(Z)Lam/e$a;

    move-result-object v0

    iget-object v1, p0, Lam/d;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lam/e$a;->c(Landroid/content/Context;)Lam/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lam/e$a;->j()Lam/e;

    move-result-object v0

    return-object v0
.end method
