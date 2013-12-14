.class public Lcom/aokp/romcontrol/widgets/DeveloperPreference;
.super Landroid/preference/Preference;
.source "DeveloperPreference.java"


# static fields
.field public static final GRAVATAR_API:Ljava/lang/String; = "http://www.gravatar.com/avatar/"

.field private static final TAG:Ljava/lang/String; = "DeveloperPreference"

.field public static mDefaultAvatarSize:I


# instance fields
.field private devEmail:Ljava/lang/String;

.field private devName:Landroid/widget/TextView;

.field private donateButton:Landroid/widget/ImageView;

.field private donateLink:Ljava/lang/String;

.field private githubButton:Landroid/widget/ImageView;

.field private githubLink:Ljava/lang/String;

.field private final mDisplay:Landroid/view/Display;

.field private nameDev:Ljava/lang/String;

.field private photoView:Landroid/widget/ImageView;

.field private twitterButton:Landroid/widget/ImageView;

.field private twitterName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x190

    sput v0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->mDefaultAvatarSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, typedArray:Landroid/content/res/TypedArray;
    :try_start_0
    sget-object v2, Lcom/aokp/romcontrol/R$styleable;->DeveloperPreference:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->nameDev:Ljava/lang/String;

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->twitterName:Ljava/lang/String;

    .line 49
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->donateLink:Ljava/lang/String;

    .line 50
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->githubLink:Ljava/lang/String;

    .line 51
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->devEmail:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 58
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->mDisplay:Landroid/view/Display;

    .line 59
    return-void

    .line 53
    .end local v1           #wm:Landroid/view/WindowManager;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw v2
.end method

.method static synthetic access$000(Lcom/aokp/romcontrol/widgets/DeveloperPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->donateLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aokp/romcontrol/widgets/DeveloperPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->githubLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/widgets/DeveloperPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->twitterName:Ljava/lang/String;

    return-object v0
.end method

.method private getMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "devEmail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 145
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 146
    .local v2, md:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 147
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 148
    .local v0, byteData:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 150
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getGravatarUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "email"

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, emailMd5:Ljava/lang/String;
    const-string v2, "%s%s?s=%d&d=mm"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "http://www.gravatar.com/avatar/"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    sget v5, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->mDefaultAvatarSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 140
    .end local v1           #emailMd5:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/16 v5, 0x8

    .line 75
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 76
    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->donateLink:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 77
    new-instance v0, Lcom/aokp/romcontrol/widgets/DeveloperPreference$1;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/widgets/DeveloperPreference$1;-><init>(Lcom/aokp/romcontrol/widgets/DeveloperPreference;)V

    .line 86
    .local v0, openDonate:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->donateButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .end local v0           #openDonate:Landroid/view/View$OnClickListener;
    :goto_0
    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->githubLink:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 92
    new-instance v1, Lcom/aokp/romcontrol/widgets/DeveloperPreference$2;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/widgets/DeveloperPreference$2;-><init>(Lcom/aokp/romcontrol/widgets/DeveloperPreference;)V

    .line 101
    .local v1, openGithub:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->githubButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .end local v1           #openGithub:Landroid/view/View$OnClickListener;
    :goto_1
    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->twitterName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 107
    new-instance v2, Lcom/aokp/romcontrol/widgets/DeveloperPreference$3;

    invoke-direct {v2, p0}, Lcom/aokp/romcontrol/widgets/DeveloperPreference$3;-><init>(Lcom/aokp/romcontrol/widgets/DeveloperPreference;)V

    .line 120
    .local v2, openTwitter:Landroid/preference/Preference$OnPreferenceClickListener;
    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->photoView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->devEmail:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->getGravatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f02000f

    const-wide/32 v6, 0x240c8400

    invoke-static {v3, v4, v5, v6, v7}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;IJ)V

    .line 129
    .end local v2           #openTwitter:Landroid/preference/Preference$OnPreferenceClickListener;
    :goto_2
    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->devName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->nameDev:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->donateButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->githubButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 126
    :cond_2
    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->twitterButton:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    invoke-virtual {p0}, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040004

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, layout:Landroid/view/View;
    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->twitterButton:Landroid/widget/ImageView;

    .line 66
    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->donateButton:Landroid/widget/ImageView;

    .line 67
    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->githubButton:Landroid/widget/ImageView;

    .line 68
    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->devName:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->photoView:Landroid/widget/ImageView;

    .line 70
    return-object v0
.end method
