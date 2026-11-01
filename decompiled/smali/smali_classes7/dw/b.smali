.class public final synthetic Ldw/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# instance fields
.field public final synthetic a:Lcw/a;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcw/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldw/b;->a:Lcw/a;

    iput-object p2, p0, Ldw/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onProgress(Ljava/lang/Object;JJ)V
    .locals 7

    iget-object v0, p0, Ldw/b;->a:Lcw/a;

    iget-object v1, p0, Ldw/b;->b:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Ldw/c;->j(Lcw/a;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    return-void
.end method
