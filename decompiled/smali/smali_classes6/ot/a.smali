.class public Lot/a;
.super Ljava/lang/Object;


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    iget v0, p0, Lot/a;->type:I

    return v0
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lot/a;->type:I

    return-void
.end method
