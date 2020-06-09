#__precompile__()
"""
    VIDA
Is a image feature extraction tool for use with EHT images of black holes.
It assumes that the image is close to one of the filters we have implemented
and then tries to extract that feature from the image using one of the probability
divergences implemented.
"""
module VIDA

export
    #make the divergences to use for optimization
    make_div,
    #plotting stuff I created
    plot, plot_triptic,
    #All the filters I created
    GaussianRing,SlashedGaussianRing,EllipticalGaussianRing,
    TIDAGaussianRing,GeneralGaussianRing, Constant, AsymGaussian,
    stack,split,
    #filter function
    imagefilter, unpack,
    #Imaging stuff
    EHTImage, load_ehtimfits, clipimage, save_ehtimfits,
    #Feature extraction stuff
    extract, bbextract

using BlackBoxOptim
using DataFrames
using DocStringExtensions
using FITSIO
using LaTeXStrings
using Optim
using PhysicalConstants.CODATA2018: c_0, h, k_B
using Parameters
using PyPlot
using Random: seed!,rand, GLOBAL_RNG, AbstractRNG
using SpecialFunctions:erf

#Load the images
include("images.jl")
#Load the visualization stuff
include("filters.jl")
#Load the divergence functions
include("divergences.jl")
#Visualization tools
include("visualizations.jl")
#filter extractor
include("extractor.jl")


end #end the module
