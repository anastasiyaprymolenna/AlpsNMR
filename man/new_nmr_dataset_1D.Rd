% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nmr_dataset_1D.R
\name{new_nmr_dataset_1D}
\alias{new_nmr_dataset_1D}
\title{Creates a new 1D nmr_dataset object from scratch}
\usage{
new_nmr_dataset_1D(ppm_axis, data_1r, metadata)
}
\arguments{
\item{ppm_axis}{A numeric vector with the ppm values for the columns of data_1r}

\item{data_1r}{A numeric matrix with one NMR spectrum on each row}

\item{metadata}{A list of data frames with at least the \code{NMRExperiment} column}
}
\value{
Creates a new 1D nmr_dataset object from scratch
}
\description{
Creates a new 1D nmr_dataset object from scratch
}
\examples{
# Create a random spectra matrix
nsamp <- 12
npoints <- 20
dummy_ppm_axis <- seq(from = 0.2, to = 10, length.out = npoints)
dummy_spectra_matrix <- matrix(runif(nsamp*npoints), nrow = nsamp, ncol = npoints)
metadata <- list(external = data.frame(NMRExperiment = paste0("Sample", 1:12),
                                       DummyClass = c("a", "b"),
                                       stringsAsFactors = FALSE))
dummy_nmr_dataset_1D <- new_nmr_dataset_1D(ppm_axis = dummy_ppm_axis,
                                           data_1r = dummy_spectra_matrix,
                                           metadata = metadata)
                                                 
                                                 
}
\seealso{
Other class helper functions: 
\code{\link{format.nmr_dataset_1D}()},
\code{\link{format.nmr_dataset_peak_table}()},
\code{\link{format.nmr_dataset}()},
\code{\link{is.nmr_dataset_1D}()},
\code{\link{is.nmr_dataset_peak_table}()},
\code{\link{new_nmr_dataset_peak_table}()},
\code{\link{new_nmr_dataset}()},
\code{\link{print.nmr_dataset_1D}()},
\code{\link{print.nmr_dataset_peak_table}()},
\code{\link{print.nmr_dataset}()},
\code{\link{validate_nmr_dataset_family}()},
\code{\link{validate_nmr_dataset_peak_table}()},
\code{\link{validate_nmr_dataset}()}

Other nmr_dataset_1D functions: 
\code{\link{[.nmr_dataset_1D}()},
\code{\link{computes_peak_width_ppm}()},
\code{\link{file_lister}()},
\code{\link{files_to_rDolphin_blood}()},
\code{\link{files_to_rDolphin_cell}()},
\code{\link{files_to_rDolphin_urine}()},
\code{\link{format.nmr_dataset_1D}()},
\code{\link{is.nmr_dataset_1D}()},
\code{\link{load_and_save_functions}},
\code{\link{nmr_align_find_ref}()},
\code{\link{nmr_baseline_removal}()},
\code{\link{nmr_baseline_threshold}()},
\code{\link{nmr_exclude_region}()},
\code{\link{nmr_integrate_regions}()},
\code{\link{nmr_interpolate_1D}()},
\code{\link{nmr_meta_add}()},
\code{\link{nmr_meta_export}()},
\code{\link{nmr_meta_get_column}()},
\code{\link{nmr_meta_get}()},
\code{\link{nmr_normalize}()},
\code{\link{nmr_pca_build_model}()},
\code{\link{nmr_pca_outliers_filter}()},
\code{\link{nmr_pca_outliers_plot}()},
\code{\link{nmr_pca_outliers_robust}()},
\code{\link{nmr_pca_outliers}()},
\code{\link{nmr_ppm_resolution}()},
\code{\link{plot.nmr_dataset_1D}()},
\code{\link{plot_webgl}()},
\code{\link{print.nmr_dataset_1D}()},
\code{\link{rdCV_PLS_RF_ML}()},
\code{\link{rdCV_PLS_RF}()},
\code{\link{save_files_to_rDolphin}()},
\code{\link{to_ChemoSpec}()},
\code{\link{validate_nmr_dataset_peak_table}()},
\code{\link{validate_nmr_dataset}()}
}
\concept{class helper functions}
\concept{nmr_dataset_1D functions}
