.class public final Lcom/bytedance/sdk/component/sP/Sj/vS;
.super Ljava/lang/Object;


# instance fields
.field private final Sj:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Sj()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public Sj(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj:[Ljava/lang/String;

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public sP(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj:[Ljava/lang/String;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method
