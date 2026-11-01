.class public Lcom/transsion/sdk/oneid/data/IdChangeInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public id_type:Ljava/lang/String;

.field public new_id:Ljava/lang/String;

.field public pre_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->id_type:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->pre_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->new_id:Ljava/lang/String;

    return-void
.end method
