.class public Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/AWS4Signer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HeaderSigningResult"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[B

.field private final d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->c:[B

    iput-object p4, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->d:[B

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()[B
    .locals 4

    iget-object v0, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->c:[B

    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .locals 4

    iget-object v0, p0, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->d:[B

    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
