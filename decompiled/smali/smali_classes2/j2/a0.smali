.class public final Lj2/a0;
.super Lj2/c;


# instance fields
.field private final i:I

.field private final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/common/f0;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lj2/a0;-><init>(Landroidx/media3/common/f0;IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/f0;IIILjava/lang/Object;)V
    .locals 0

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lj2/c;-><init>(Landroidx/media3/common/f0;[II)V

    iput p4, p0, Lj2/a0;->i:I

    iput-object p5, p0, Lj2/a0;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public e(JJJLjava/util/List;[Lh2/n;)V
    .locals 0

    return-void
.end method

.method public getSelectedIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj2/a0;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    iget v0, p0, Lj2/a0;->i:I

    return v0
.end method
