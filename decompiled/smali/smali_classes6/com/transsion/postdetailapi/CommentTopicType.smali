.class public final enum Lcom/transsion/postdetailapi/CommentTopicType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/postdetailapi/CommentTopicType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/transsion/postdetailapi/CommentTopicType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "POST",
        "UGC_VIDEO",
        "PostDetailApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/postdetailapi/CommentTopicType;

.field public static final enum POST:Lcom/transsion/postdetailapi/CommentTopicType;

.field public static final enum UGC_VIDEO:Lcom/transsion/postdetailapi/CommentTopicType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/postdetailapi/CommentTopicType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/transsion/postdetailapi/CommentTopicType;

    sget-object v1, Lcom/transsion/postdetailapi/CommentTopicType;->POST:Lcom/transsion/postdetailapi/CommentTopicType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/postdetailapi/CommentTopicType;->UGC_VIDEO:Lcom/transsion/postdetailapi/CommentTopicType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/postdetailapi/CommentTopicType;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/postdetailapi/CommentTopicType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/postdetailapi/CommentTopicType;->POST:Lcom/transsion/postdetailapi/CommentTopicType;

    new-instance v0, Lcom/transsion/postdetailapi/CommentTopicType;

    const-string v1, "UGC_VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/postdetailapi/CommentTopicType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/postdetailapi/CommentTopicType;->UGC_VIDEO:Lcom/transsion/postdetailapi/CommentTopicType;

    invoke-static {}, Lcom/transsion/postdetailapi/CommentTopicType;->$values()[Lcom/transsion/postdetailapi/CommentTopicType;

    move-result-object v0

    sput-object v0, Lcom/transsion/postdetailapi/CommentTopicType;->$VALUES:[Lcom/transsion/postdetailapi/CommentTopicType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/postdetailapi/CommentTopicType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/postdetailapi/CommentTopicType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/postdetailapi/CommentTopicType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/postdetailapi/CommentTopicType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/postdetailapi/CommentTopicType;
    .locals 1

    const-class v0, Lcom/transsion/postdetailapi/CommentTopicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/postdetailapi/CommentTopicType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/postdetailapi/CommentTopicType;
    .locals 1

    sget-object v0, Lcom/transsion/postdetailapi/CommentTopicType;->$VALUES:[Lcom/transsion/postdetailapi/CommentTopicType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/postdetailapi/CommentTopicType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetailapi/CommentTopicType;->value:Ljava/lang/String;

    return-object v0
.end method
