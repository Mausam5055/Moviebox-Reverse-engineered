.class public Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;
.super Landroid/view/ViewGroup$MarginLayoutParams;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/HiB/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/HiB/HiB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Dq:I

.field private EjP:I

.field private HiB:F

.field private Jcg:I

.field private Sj:I

.field private TEQ:Z

.field private TKC:F

.field private sP:F

.field private uA:I

.field private vS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj$1;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj$1;-><init>()V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Sj:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->sP:F

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TKC:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->EjP:I

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->HiB:F

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->vS:I

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Jcg:I

    const p1, 0xffffff

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Dq:I

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->uA:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Sj:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->sP:F

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TKC:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->EjP:I

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->HiB:F

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->vS:I

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Jcg:I

    const v2, 0xffffff

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Dq:I

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->uA:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Sj:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->sP:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TKC:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->EjP:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->HiB:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->vS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Jcg:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Dq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->uA:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TEQ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Sj:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->sP:F

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TKC:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->EjP:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->HiB:F

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->vS:I

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Jcg:I

    const p1, 0xffffff

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Dq:I

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->uA:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Sj:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->sP:F

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TKC:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->EjP:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->HiB:F

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->vS:I

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Jcg:I

    const p1, 0xffffff

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Dq:I

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->uA:I

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Sj:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->sP:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TKC:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->EjP:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->HiB:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->vS:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Jcg:I

    const v0, 0xffffff

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Dq:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->uA:I

    iget v0, p1, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Sj:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Sj:I

    iget v0, p1, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->sP:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->sP:F

    iget v0, p1, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TKC:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TKC:F

    iget v0, p1, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->EjP:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->EjP:I

    iget v0, p1, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->HiB:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->HiB:F

    iget v0, p1, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->vS:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->vS:I

    iget v0, p1, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Jcg:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Jcg:I

    iget v0, p1, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Dq:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Dq:I

    iget v0, p1, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->uA:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->uA:I

    iget-boolean p1, p1, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TEQ:Z

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TEQ:Z

    return-void
.end method


# virtual methods
.method public Dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Jcg:I

    return v0
.end method

.method public EjP()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->sP:F

    return v0
.end method

.method public EjP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->EjP:I

    return-void
.end method

.method public Fmk()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method public HiB()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TKC:F

    return v0
.end method

.method public Jcg()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->vS:I

    return v0
.end method

.method public Sj()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return v0
.end method

.method public Sj(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->sP:F

    return-void
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->vS:I

    return-void
.end method

.method public TEQ()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->uA:I

    return v0
.end method

.method public TKC()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Sj:I

    return v0
.end method

.method public TKC(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->HiB:F

    return-void
.end method

.method public TKC(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Sj:I

    return-void
.end method

.method public Ym()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TEQ:Z

    return v0
.end method

.method public Zq()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0
.end method

.method public aa()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->HiB:F

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sP()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return v0
.end method

.method public sP(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TKC:F

    return-void
.end method

.method public sP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Jcg:I

    return-void
.end method

.method public sef()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return v0
.end method

.method public uA()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Dq:I

    return v0
.end method

.method public uvD()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return v0
.end method

.method public vS()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->EjP:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Sj:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->sP:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TKC:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->EjP:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->HiB:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->vS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Jcg:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->Dq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->uA:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;->TEQ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
