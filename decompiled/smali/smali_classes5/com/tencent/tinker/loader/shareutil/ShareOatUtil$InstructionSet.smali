.class final enum Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/shareutil/ShareOatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InstructionSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kArm:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kArm64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kMips:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kMips64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kNone:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kThumb2:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kX86:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kX86_64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v1, "kNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kNone:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v1, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v3, "kArm"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kArm:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v3, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v5, "kArm64"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kArm64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v5, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v7, "kThumb2"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kThumb2:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v7, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v9, "kX86"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kX86:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v9, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v11, "kX86_64"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kX86_64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v11, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v13, "kMips"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kMips:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v13, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v15, "kMips64"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kMips64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->$VALUES:[Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;
    .locals 1

    const-class v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;
    .locals 1

    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->$VALUES:[Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    invoke-virtual {v0}, [Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    return-object v0
.end method
