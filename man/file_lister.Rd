% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/file_lister.R
\name{file_lister}
\alias{file_lister}
\title{NMR file lister}
\usage{
file_lister(dataset_path_nmr, glob)
}
\arguments{
\item{dataset_path_nmr}{A character vector of the path where samples are.}

\item{glob}{A wildcard or globbing pattern common for the samples to be read,
for example ending with *0 (spectra acquired by a NOESY sequence often end
by 0: 10, 20, 30...) or *s (for example, samples from the tutorial in this
package) passed on to \code{grep()} to filter paths.}
}
\value{
lists of samples from the chosen folder
}
\description{
The function lists samples from the chosen folder required to import and
create a \link{nmr_dataset_1D} object. The function is based on the \code{\link[fs:dir_ls]{fs::dir_ls()}}
function.
}
\examples{
dir_to_demo_dataset <- system.file("dataset-demo", package = "AlpsNMR")
lists_of_samples <- file_lister(dir_to_demo_dataset, "*0")

}
\seealso{
Other nmr_dataset_1D functions: 
\code{\link{[.nmr_dataset_1D}()},
\code{\link{computes_peak_width_ppm}()},
\code{\link{files_to_rDolphin_blood}()},
\code{\link{files_to_rDolphin_cell}()},
\code{\link{files_to_rDolphin_urine}()},
\code{\link{format.nmr_dataset_1D}()},
\code{\link{is.nmr_dataset_1D}()},
\code{\link{load_and_save_functions}},
\code{\link{new_nmr_dataset_1D}()},
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
\concept{nmr_dataset_1D functions}
