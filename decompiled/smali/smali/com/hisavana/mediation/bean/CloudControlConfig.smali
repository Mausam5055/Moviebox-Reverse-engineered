.class public Lcom/hisavana/mediation/bean/CloudControlConfig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;,
        Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig;->code:I

    return v0
.end method

.method public getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig;->data:Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig;->code:I

    return-void
.end method

.method public setData(Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig;->data:Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig;->message:Ljava/lang/String;

    return-void
.end method
